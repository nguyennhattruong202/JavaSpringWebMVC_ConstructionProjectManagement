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
@Table(name = "discuss")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Discuss.findAll", query = "SELECT d FROM Discuss d"),
    @NamedQuery(name = "Discuss.findById", query = "SELECT d FROM Discuss d WHERE d.id = :id"),
    @NamedQuery(name = "Discuss.findByTopic", query = "SELECT d FROM Discuss d WHERE d.topic = :topic"),
    @NamedQuery(name = "Discuss.findByCreatedDate", query = "SELECT d FROM Discuss d WHERE d.createdDate = :createdDate")})
public class Discuss implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "topic")
    private String topic;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "content")
    private String content;
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @JoinColumn(name = "person_created", referencedColumnName = "id")
    @ManyToOne
    private Personnel personCreated;
    @JoinColumn(name = "id_project", referencedColumnName = "id")
    @ManyToOne
    private Project idProject;

    public Discuss() {
    }

    public Discuss(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Personnel getPersonCreated() {
        return personCreated;
    }

    public void setPersonCreated(Personnel personCreated) {
        this.personCreated = personCreated;
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
        if (!(object instanceof Discuss)) {
            return false;
        }
        Discuss other = (Discuss) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Discuss[ id=" + id + " ]";
    }
    
}
