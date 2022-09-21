/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "change")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Change.findAll", query = "SELECT c FROM Change c"),
    @NamedQuery(name = "Change.findById", query = "SELECT c FROM Change c WHERE c.id = :id"),
    @NamedQuery(name = "Change.findByTitle", query = "SELECT c FROM Change c WHERE c.title = :title"),
    @NamedQuery(name = "Change.findByNewContent", query = "SELECT c FROM Change c WHERE c.newContent = :newContent"),
    @NamedQuery(name = "Change.findByOldContent", query = "SELECT c FROM Change c WHERE c.oldContent = :oldContent"),
    @NamedQuery(name = "Change.findByCreatedDate", query = "SELECT c FROM Change c WHERE c.createdDate = :createdDate"),
    @NamedQuery(name = "Change.findByPriority", query = "SELECT c FROM Change c WHERE c.priority = :priority")})
public class Change implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "title")
    private String title;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "description")
    private String description;
    @Size(max = 255)
    @Column(name = "new_content")
    private String newContent;
    @Size(max = 255)
    @Column(name = "old_content")
    private String oldContent;
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 255)
    @Column(name = "priority")
    private String priority;
    @JoinColumn(name = "id_personnel", referencedColumnName = "id")
    @ManyToOne
    private Personnel idPersonnel;
    @JoinColumn(name = "id_project", referencedColumnName = "id")
    @ManyToOne
    private Project idProject;

    public Change() {
    }

    public Change(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getNewContent() {
        return newContent;
    }

    public void setNewContent(String newContent) {
        this.newContent = newContent;
    }

    public String getOldContent() {
        return oldContent;
    }

    public void setOldContent(String oldContent) {
        this.oldContent = oldContent;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public Personnel getIdPersonnel() {
        return idPersonnel;
    }

    public void setIdPersonnel(Personnel idPersonnel) {
        this.idPersonnel = idPersonnel;
    }

    public Project getIdProject() {
        return idProject;
    }

    public void setIdProject(Project idProject) {
        this.idProject = idProject;
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
        if (!(object instanceof Change)) {
            return false;
        }
        Change other = (Change) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Change[ id=" + id + " ]";
    }
    
}
