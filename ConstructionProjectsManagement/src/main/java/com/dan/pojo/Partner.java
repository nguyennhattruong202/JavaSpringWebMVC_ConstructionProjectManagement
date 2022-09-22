/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "partner")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Partner.findAll", query = "SELECT p FROM Partner p"),
    @NamedQuery(name = "Partner.findById", query = "SELECT p FROM Partner p WHERE p.id = :id"),
    @NamedQuery(name = "Partner.findByName", query = "SELECT p FROM Partner p WHERE p.name = :name"),
    @NamedQuery(name = "Partner.findByPhone", query = "SELECT p FROM Partner p WHERE p.phone = :phone"),
    @NamedQuery(name = "Partner.findByEmail", query = "SELECT p FROM Partner p WHERE p.email = :email"),
    @NamedQuery(name = "Partner.findByWebsite", query = "SELECT p FROM Partner p WHERE p.website = :website"),
    @NamedQuery(name = "Partner.findByCountry", query = "SELECT p FROM Partner p WHERE p.country = :country"),
    @NamedQuery(name = "Partner.findByAddress", query = "SELECT p FROM Partner p WHERE p.address = :address"),
    @NamedQuery(name = "Partner.findByType", query = "SELECT p FROM Partner p WHERE p.type = :type"),
    @NamedQuery(name = "Partner.findByNote", query = "SELECT p FROM Partner p WHERE p.note = :note"),
    @NamedQuery(name = "Partner.findByActive", query = "SELECT p FROM Partner p WHERE p.active = :active")})
public class Partner implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "name")
    private String name;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 50)
    @Column(name = "phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 255)
    @Column(name = "email")
    private String email;
    @Size(max = 255)
    @Column(name = "website")
    private String website;
    @Size(max = 255)
    @Column(name = "country")
    private String country;
    @Size(max = 255)
    @Column(name = "address")
    private String address;
    @Size(max = 255)
    @Column(name = "type")
    private String type;
    @Size(max = 255)
    @Column(name = "note")
    private String note;
    @Column(name = "active")
    private Boolean active;
    @JsonIgnore
    @OneToMany(mappedBy = "idPartner")
    private Set<Invest> investSet;

    public Partner() {
    }

    public Partner(Integer id) {
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

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @XmlTransient
    public Set<Invest> getInvestSet() {
        return investSet;
    }

    public void setInvestSet(Set<Invest> investSet) {
        this.investSet = investSet;
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
        if (!(object instanceof Partner)) {
            return false;
        }
        Partner other = (Partner) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Partner[ id=" + id + " ]";
    }

}
