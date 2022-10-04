/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Category;
import com.dan.pojo.Personnel;
import com.dan.pojo.Status;
import com.dan.repository.CategoryRepository;
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
public class CategoryRepositoryImpl implements CategoryRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Object[]> getCategory() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rCategory = criteriaQuery.from(Category.class);
        Root rStatus = criteriaQuery.from(Status.class);
        Root rPersonnel = criteriaQuery.from(Personnel.class);
        Predicate pActive = criteriaBuilder.equal(rCategory.get("active"), true);
        Predicate pCategoryStatus = criteriaBuilder.equal(rCategory.get("idStatus"), rStatus.get("id"));
        Predicate pCategoryPersonnel = criteriaBuilder.equal(rCategory.get("personResponsible"), rPersonnel.get("id"));
        criteriaQuery.where(pActive, pCategoryPersonnel, pCategoryStatus);
        criteriaQuery.multiselect(rCategory.get("id"), rCategory.get("name"), rCategory.get("startDate"),
                rCategory.get("finishDate"), rPersonnel.get("lastName"), rCategory.get("percent"), rStatus.get("name"),
                rPersonnel.get("firstName"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

}
