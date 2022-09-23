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
    public List<Partner> getPartner() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Partner> criteriaQuery = criteriaBuilder.createQuery(Partner.class);
        Root root = criteriaQuery.from(Partner.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("active"), true));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }
    
    @Override
    public void removePartner(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaUpdate<Partner> criteriaUpdate = criteriaBuilder.createCriteriaUpdate(Partner.class);
        Root root = criteriaUpdate.from(Partner.class);
        criteriaUpdate.set("active", false);
        criteriaUpdate.where(criteriaBuilder.equal(root.get("id"), id));
        session.createQuery(criteriaUpdate).executeUpdate();
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
}
