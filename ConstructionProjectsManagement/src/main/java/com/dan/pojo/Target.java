/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.pojo;

import java.io.Serializable;
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
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DELL
 */
@Entity
@Table(name = "target")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Target.findAll", query = "SELECT t FROM Target t"),
    @NamedQuery(name = "Target.findById", query = "SELECT t FROM Target t WHERE t.id = :id"),
    @NamedQuery(name = "Target.findByContent", query = "SELECT t FROM Target t WHERE t.content = :content"),
    @NamedQuery(name = "Target.findByActive", query = "SELECT t FROM Target t WHERE t.active = :active")})
public class Target implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 200)
    @Column(name = "content")
    private String content;
    @Column(name = "active")
    private Boolean active;
    @JoinColumn(name = "id_category", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Category idCategory;
    @JoinColumn(name = "id_personnel", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Change idPersonnel;
    @JoinColumn(name = "id_status", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Status idStatus;

    public Target() {
    }

    public Target(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public Category getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(Category idCategory) {
        this.idCategory = idCategory;
    }

    public Change getIdPersonnel() {
        return idPersonnel;
    }

    public void setIdPersonnel(Change idPersonnel) {
        this.idPersonnel = idPersonnel;
    }

    public Status getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(Status idStatus) {
        this.idStatus = idStatus;
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
        if (!(object instanceof Target)) {
            return false;
        }
        Target other = (Target) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Target[ id=" + id + " ]";
    }
    
}
