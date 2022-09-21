/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "project")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Project.findAll", query = "SELECT p FROM Project p"),
    @NamedQuery(name = "Project.findById", query = "SELECT p FROM Project p WHERE p.id = :id"),
    @NamedQuery(name = "Project.findByName", query = "SELECT p FROM Project p WHERE p.name = :name"),
    @NamedQuery(name = "Project.findByDescription", query = "SELECT p FROM Project p WHERE p.description = :description"),
    @NamedQuery(name = "Project.findByImage", query = "SELECT p FROM Project p WHERE p.image = :image"),
    @NamedQuery(name = "Project.findByLocation", query = "SELECT p FROM Project p WHERE p.location = :location"),
    @NamedQuery(name = "Project.findByStartDate", query = "SELECT p FROM Project p WHERE p.startDate = :startDate"),
    @NamedQuery(name = "Project.findByFinishDate", query = "SELECT p FROM Project p WHERE p.finishDate = :finishDate"),
    @NamedQuery(name = "Project.findByCreatedDate", query = "SELECT p FROM Project p WHERE p.createdDate = :createdDate"),
    @NamedQuery(name = "Project.findByMaxPerson", query = "SELECT p FROM Project p WHERE p.maxPerson = :maxPerson"),
    @NamedQuery(name = "Project.findByPercent", query = "SELECT p FROM Project p WHERE p.percent = :percent")})
public class Project implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "name")
    private String name;
    @Size(max = 255)
    @Column(name = "description")
    private String description;
    @Size(max = 255)
    @Column(name = "image")
    private String image;
    @Size(max = 255)
    @Column(name = "location")
    private String location;
    @Column(name = "start_date")
    @Temporal(TemporalType.DATE)
    private Date startDate;
    @Column(name = "finish_date")
    @Temporal(TemporalType.DATE)
    private Date finishDate;
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Column(name = "max_person")
    private Integer maxPerson;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "percent")
    private Float percent;
    @OneToMany(mappedBy = "idProject")
    private Set<Participation> participationSet;
    @OneToMany(mappedBy = "idProject")
    private Set<Change> changeSet;
    @OneToMany(mappedBy = "idProject")
    private Set<Invest> investSet;
    @JoinColumn(name = "id_status", referencedColumnName = "id")
    @ManyToOne
    private Status idStatus;
    @OneToMany(mappedBy = "idProject")
    private Set<Category> categorySet;
    @OneToMany(mappedBy = "idProject")
    private Set<Discuss> discussSet;

    public Project() {
    }

    public Project(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(Date finishDate) {
        this.finishDate = finishDate;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Integer getMaxPerson() {
        return maxPerson;
    }

    public void setMaxPerson(Integer maxPerson) {
        this.maxPerson = maxPerson;
    }

    public Float getPercent() {
        return percent;
    }

    public void setPercent(Float percent) {
        this.percent = percent;
    }

    @XmlTransient
    public Set<Participation> getParticipationSet() {
        return participationSet;
    }

    public void setParticipationSet(Set<Participation> participationSet) {
        this.participationSet = participationSet;
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

    public Status getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(Status idStatus) {
        this.idStatus = idStatus;
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
        if (!(object instanceof Project)) {
            return false;
        }
        Project other = (Project) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Project[ id=" + id + " ]";
    }
    
}
