/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author DELL
 */
@Entity
@Table(name = "personnel")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Personnel.findAll", query = "SELECT p FROM Personnel p"),
    @NamedQuery(name = "Personnel.findById", query = "SELECT p FROM Personnel p WHERE p.id = :id"),
    @NamedQuery(name = "Personnel.findByUsername", query = "SELECT p FROM Personnel p WHERE p.username = :username"),
    @NamedQuery(name = "Personnel.findByPassword", query = "SELECT p FROM Personnel p WHERE p.password = :password"),
    @NamedQuery(name = "Personnel.findByAvatar", query = "SELECT p FROM Personnel p WHERE p.avatar = :avatar"),
    @NamedQuery(name = "Personnel.findByFullname", query = "SELECT p FROM Personnel p WHERE p.fullname = :fullname"),
    @NamedQuery(name = "Personnel.findByBirthday", query = "SELECT p FROM Personnel p WHERE p.birthday = :birthday"),
    @NamedQuery(name = "Personnel.findByAddress", query = "SELECT p FROM Personnel p WHERE p.address = :address"),
    @NamedQuery(name = "Personnel.findByPhone", query = "SELECT p FROM Personnel p WHERE p.phone = :phone"),
    @NamedQuery(name = "Personnel.findByEmail", query = "SELECT p FROM Personnel p WHERE p.email = :email"),
    @NamedQuery(name = "Personnel.findByRole", query = "SELECT p FROM Personnel p WHERE p.role = :role"),
    @NamedQuery(name = "Personnel.findByActive", query = "SELECT p FROM Personnel p WHERE p.active = :active")})
public class Personnel implements Serializable {

    @Size(max = 50)
    @Column(name = "gender")
    private String gender;
    @Column(name = "active")
    private Boolean active;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersonnel")
    private Set<Participation> participationSet;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 300)
    @Column(name = "password")
    private String password;
    @Size(max = 300)
    @Column(name = "avatar")
    private String avatar;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 300)
    @Column(name = "fullname")
    private String fullname;
    @Basic(optional = false)
    @NotNull
    @Column(name = "birthday")
    @Temporal(TemporalType.DATE)
    private Date birthday;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 300)
    @Column(name = "address")
    private String address;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "email")
    private String email;
    @Size(max = 100)
    @Column(name = "role")
    private String role;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersonnel")
    private Set<Task> taskSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersonnel")
    private Set<Change> changeSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersonnel")
    private Set<Invest> investSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersonnel")
    private Set<Project> projectSet;
    @JoinColumn(name = "id_department", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Department idDepartment;
    @JoinColumn(name = "id_position", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Position idPosition;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersonnel")
    private Set<Category> categorySet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersonnel")
    private Set<Discuss> discussSet;

    public Personnel() {
    }

    public Personnel(Integer id) {
        this.id = id;
    }

    public Personnel(Integer id, String username, String password, String fullname, Date birthday, String address, String phone, String email, boolean active) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.birthday = birthday;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.active = active;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }


    @XmlTransient
    public Set<Task> getTaskSet() {
        return taskSet;
    }

    public void setTaskSet(Set<Task> taskSet) {
        this.taskSet = taskSet;
    }

    @XmlTransient
    public Set<Change> getChangeSet() {
        return changeSet;
    }

    public void setChangeSet(Set<Change> changeSet) {
        this.changeSet = changeSet;
    }

    @XmlTransient
    public Set<Invest> getInvestSet() {
        return investSet;
    }

    public void setInvestSet(Set<Invest> investSet) {
        this.investSet = investSet;
    }

    @XmlTransient
    public Set<Project> getProjectSet() {
        return projectSet;
    }

    public void setProjectSet(Set<Project> projectSet) {
        this.projectSet = projectSet;
    }

    public Department getIdDepartment() {
        return idDepartment;
    }

    public void setIdDepartment(Department idDepartment) {
        this.idDepartment = idDepartment;
    }

    public Position getIdPosition() {
        return idPosition;
    }

    public void setIdPosition(Position idPosition) {
        this.idPosition = idPosition;
    }

    @XmlTransient
    public Set<Category> getCategorySet() {
        return categorySet;
    }

    public void setCategorySet(Set<Category> categorySet) {
        this.categorySet = categorySet;
    }

    @XmlTransient
    public Set<Discuss> getDiscussSet() {
        return discussSet;
    }

    public void setDiscussSet(Set<Discuss> discussSet) {
        this.discussSet = discussSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Personnel)) {
            return false;
        }
        Personnel other = (Personnel) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Personnel[ id=" + id + " ]";
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @XmlTransient
    public Set<Participation> getParticipationSet() {
        return participationSet;
    }

    public void setParticipationSet(Set<Participation> participationSet) {
        this.participationSet = participationSet;
    }
    
}
