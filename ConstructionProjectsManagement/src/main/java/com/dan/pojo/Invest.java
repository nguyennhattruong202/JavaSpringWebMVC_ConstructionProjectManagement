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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "invest")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Invest.findAll", query = "SELECT i FROM Invest i"),
    @NamedQuery(name = "Invest.findById", query = "SELECT i FROM Invest i WHERE i.id = :id"),
    @NamedQuery(name = "Invest.findByName", query = "SELECT i FROM Invest i WHERE i.name = :name"),
    @NamedQuery(name = "Invest.findByContent", query = "SELECT i FROM Invest i WHERE i.content = :content"),
    @NamedQuery(name = "Invest.findByMoney", query = "SELECT i FROM Invest i WHERE i.money = :money"),
    @NamedQuery(name = "Invest.findByCreatedDate", query = "SELECT i FROM Invest i WHERE i.createdDate = :createdDate"),
    @NamedQuery(name = "Invest.findByApprovedDate", query = "SELECT i FROM Invest i WHERE i.approvedDate = :approvedDate")})
public class Invest implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 255)
    @Column(name = "name")
    private String name;
    @Size(max = 255)
    @Column(name = "content")
    private String content;
    @Column(name = "money")
    private Long money;
    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    private Date createdDate;
    @Column(name = "approved_date")
    @Temporal(TemporalType.DATE)
    private Date approvedDate;
    @JoinColumn(name = "id_partner", referencedColumnName = "id")
    @ManyToOne
    private Partner idPartner;
    @JoinColumn(name = "id_personnel", referencedColumnName = "id")
    @ManyToOne
    private Personnel idPersonnel;
    @JoinColumn(name = "id_project", referencedColumnName = "id")
    @ManyToOne
    private Project idProject;
    @JoinColumn(name = "id_status", referencedColumnName = "id")
    @ManyToOne
    private Status idStatus;

    public Invest() {
    }

    public Invest(Integer id) {
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getApprovedDate() {
        return approvedDate;
    }

    public void setApprovedDate(Date approvedDate) {
        this.approvedDate = approvedDate;
    }

    public Partner getIdPartner() {
        return idPartner;
    }

    public void setIdPartner(Partner idPartner) {
        this.idPartner = idPartner;
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
        if (!(object instanceof Invest)) {
            return false;
        }
        Invest other = (Invest) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dan.pojo.Invest[ id=" + id + " ]";
    }
    
}
