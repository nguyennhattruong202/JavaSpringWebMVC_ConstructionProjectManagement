/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Status;
import com.dan.repository.StatusRepository;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class StatusRepositoryImpl implements StatusRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Status> getStatus() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Status> criteriaQuery = criteriaBuilder.createQuery(Status.class);
        Root root = criteriaQuery.from(Status.class);
        criteriaQuery.select(root);
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public Map<String, String> getMapStatus() {
        Map<String, String> result = new HashMap<>();
        List<Status> status = this.getStatus();
        for (Status item : status) {
            result.put(item.getId().toString(), item.getName());
        }
        return result;
    }
}
