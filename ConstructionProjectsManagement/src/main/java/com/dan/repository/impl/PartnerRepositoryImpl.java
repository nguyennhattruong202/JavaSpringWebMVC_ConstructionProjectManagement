/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Partner;
import com.dan.repository.PartnerRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaUpdate;
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
public class PartnerRepositoryImpl implements PartnerRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public void removePartner(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Query query = session.createQuery("UPDATE Partner SET active=false WHERE id=:id");
            query.setParameter("id", id);
            query.executeUpdate();
        } catch (Exception e) {
            System.err.println("===Remove failed repo===" + e.getMessage());
        }
    }

    @Override
    public List<Partner> searchAll(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Partner> criteriaQuery = criteriaBuilder.createQuery(Partner.class);
        Root root = criteriaQuery.from(Partner.class);
        Predicate pActive = criteriaBuilder.equal(root.get("active"), true);
        criteriaQuery.select(root).where(pActive);
        if (kw != null && !kw.isEmpty()) {
            Predicate pConcat = criteriaBuilder.like(criteriaBuilder.concat(root.get("name"),
                    criteriaBuilder.concat(root.get("phone"),
                            criteriaBuilder.concat(root.get("email"),
                                    criteriaBuilder.concat(root.get("address"), root.get("note"))))),
                    String.format("%%%s%%", kw));
            criteriaQuery.where(criteriaBuilder.and(pConcat, pActive));
        }
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public boolean updatePartner(int id, Partner partner) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaUpdate<Partner> criteriaUpdate = criteriaBuilder.createCriteriaUpdate(Partner.class);
        Root root = criteriaUpdate.from(Partner.class);
        criteriaUpdate.set("name", partner.getName());
        criteriaUpdate.set("phone", partner.getPhone());
        criteriaUpdate.set("email", partner.getEmail());
        criteriaUpdate.set("website", partner.getWebsite());
        criteriaUpdate.set("country", partner.getCountry());
        criteriaUpdate.set("address", partner.getAddress());
        criteriaUpdate.set("type", partner.getType());
        criteriaUpdate.set("note", partner.getNote());
        criteriaUpdate.set("active", true);
        criteriaUpdate.where(criteriaBuilder.equal(root.get("id"), id));
        int result = session.createQuery(criteriaUpdate).executeUpdate();
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Partner findPartnerById(int id, boolean active) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Partner> criteriaQuery = criteriaBuilder.createQuery(Partner.class);
        Root root = criteriaQuery.from(Partner.class);
        Predicate pActive = criteriaBuilder.equal(root.get("active"), active);
        Predicate pId = criteriaBuilder.equal(root.get("id"), id);
        criteriaQuery.select(root).where(pActive, pId);
        Query query = session.createQuery(criteriaQuery);
        return (Partner) query.getSingleResult();
    }

    @Override
    public boolean addPartner(Partner partner) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            session.save(partner);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Partner partner) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(partner);
            return true;
        } catch (Exception e) {
            System.err.println("===Update failed repo===" + e.getMessage());
            return false;
        }
    }
}
