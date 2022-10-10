/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Department;
import com.dan.pojo.Personnel;
import com.dan.pojo.Position;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dan.repository.PersonnelRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

@Repository
@Transactional
public class PersonnelRepositoryImpl implements PersonnelRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Object[]> getPersonnel(boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rootPersonnel = criteriaQuery.from(Personnel.class);
        Root rootPosition = criteriaQuery.from(Position.class);
        Root rootDepartment = criteriaQuery.from(Department.class);
        Predicate pActive = criteriaBuilder.equal(rootPersonnel.get("active"), active);
        Predicate pPerPos = criteriaBuilder.equal(rootPersonnel.get("idPosition"), rootPosition.get("id"));
        Predicate pPerDep = criteriaBuilder.equal(rootPersonnel.get("idDepartment"), rootDepartment.get("id"));
        criteriaQuery.where(pActive, pPerPos, pPerDep);
        criteriaQuery.multiselect(rootPersonnel.get("id"), rootPersonnel.get("avatar"),
                rootPersonnel.get("lastName"), rootPersonnel.get("firstName"), rootPersonnel.get("gender"),
                rootPersonnel.get("birthday"), rootPersonnel.get("identity"), rootPersonnel.get("phone"),
                rootPersonnel.get("email"), rootPersonnel.get("address"), rootPersonnel.get("role"),
                rootPosition.get("name"), rootDepartment.get("name"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public List<Object[]> constructionSupervisonList() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rPersonnel = criteriaQuery.from(Personnel.class);
        Root rPosition = criteriaQuery.from(Position.class);
        Predicate pPerPos = criteriaBuilder.equal(rPersonnel.get("idPosition"), rPosition.get("id"));
        Predicate pPersonnelActive = criteriaBuilder.equal(rPersonnel.get("active"), true);
        Predicate pPositionActive = criteriaBuilder.equal(rPosition.get("active"), true);
        Predicate pPositionName = criteriaBuilder.like(rPosition.get("name"), String.format("%%%s%%", "giám sát xây dựng"));
        criteriaQuery.where(pPersonnelActive, pPositionActive, pPositionName, pPerPos);
        criteriaQuery.multiselect(rPersonnel.get("id"), rPersonnel.get("lastName"), rPersonnel.get("firstName"), rPosition.get("name"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public Personnel findPersonnelById(int id, boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Personnel> criteriaQuery = criteriaBuilder.createQuery(Personnel.class);
        Root root = criteriaQuery.from(Personnel.class);
        Predicate pId = criteriaBuilder.equal(root.get("id"), id);
        Predicate pActive = criteriaBuilder.equal(root.get("active"), active);
        criteriaQuery.select(root).where(pId, pActive);
        Query query = session.createQuery(criteriaQuery);
        return (Personnel) query.getSingleResult();
    }

    @Override
    public List<String> getPersonnelRole() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Personnel> criteriaQuery = criteriaBuilder.createQuery(Personnel.class);
        Root root = criteriaQuery.from(Personnel.class);
        criteriaQuery.select(root.get("role"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public boolean addPersonnel(Personnel personnel) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            session.save(personnel);
            return true;
        } catch (Exception ex) {
            System.err.println("===Add personnel error repository===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
}
