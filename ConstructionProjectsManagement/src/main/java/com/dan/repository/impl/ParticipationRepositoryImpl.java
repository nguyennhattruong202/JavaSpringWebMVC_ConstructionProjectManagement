/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Participation;
import com.dan.pojo.Personnel;
import com.dan.repository.ParticipationRepository;
import java.util.Date;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ParticipationRepositoryImpl implements ParticipationRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Object[]> getPersonnelJoinProject(int projectId, boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rootPersonnel = criteriaQuery.from(Personnel.class);
        Root rootParticipation = criteriaQuery.from(Participation.class);
        Predicate pProjectId = criteriaBuilder.equal(rootParticipation.get("idProject"), projectId);
        Predicate pActive = criteriaBuilder.equal(rootParticipation.get("active"), active);
        Predicate pParticipationPersonnel = criteriaBuilder.equal(rootParticipation.get("idPersonnel"), rootPersonnel.get("id"));
        criteriaQuery.where(pProjectId, pActive, pParticipationPersonnel);
        criteriaQuery.multiselect(rootPersonnel.get("id"), rootPersonnel.get("lastName"), rootPersonnel.get("firstName"),
                rootPersonnel.get("phone"), rootPersonnel.get("email"), rootParticipation.get("startDate"),
                rootParticipation.get("position"), rootParticipation.get("id"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public void removePersonnelFromProject(Participation participation) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        participation.setEndDate(new Date());
        participation.setActive(false);
        try {
            session.update(participation);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

    @Override
    public Participation findParticipationById(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Participation> criteriaQuery = criteriaBuilder.createQuery(Participation.class);
        Root root = criteriaQuery.from(Participation.class);
        Predicate pActive = criteriaBuilder.equal(root.get("active"), true);
        Predicate pId = criteriaBuilder.equal(root.get("id"), id);
        criteriaQuery.select(root).where(pId, pActive);
        Query query = session.createQuery(criteriaQuery);
        return (Participation) query.getSingleResult();
    }

    @Override
    public boolean updateParticipation(Participation participation) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            session.update(participation);
            return true;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return false;
        }
    }

}
