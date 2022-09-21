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
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "participation")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Participation.findAll", query = "SELECT p FROM Participation p"),
    @NamedQuery(name = "Participation.findById", query = "SELECT p FROM Participation p WHERE p.id = :id"),
    @NamedQuery(name = "Participation.findByStartDate", query = "SELECT p FROM Participation p WHERE p.startDate = :startDate"),
    @NamedQuery(name = "Participation.findByEndDate", query = "SELECT p FROM Participation p WHERE p.endDate = :endDate")})
public class Participation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "start_date")
    @Temporal(TemporalType.DATE)
    private Date startDate;
    @Column(name = "end_date")
    @Temporal(TemporalType.DATE)
    private Date endDate;
    @JoinColumn(name = "id_personnel", referencedColumnName = "id")
    @ManyToOne
    private Personnel idPersonnel;
    @JoinColumn(name = "id_position", referencedColumnName = "id")
    @ManyToOne
    private Position idPosition;
    @JoinColumn(name = "id_project", referencedColumnName = "id")
    @ManyToOne
    private Project idProject;

    public Participation() {
    }

    public Participation(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Personnel getIdPersonnel() {
        return idPersonnel;
    }

    public void setIdPersonnel(Personnel idPersonnel) {
        this.idPersonnel = idPersonnel;
    }

    public Position getIdPosition() {
        return idPosition;
    }

    public void setIdPosition(Position idPosition) {
        this.idPosition = idPosition;
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
        if (!(object instanceof Participation)) {
            return false;
        }
        Participation other = (Participation) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Participation[ id=" + id + " ]";
    }
    
}
