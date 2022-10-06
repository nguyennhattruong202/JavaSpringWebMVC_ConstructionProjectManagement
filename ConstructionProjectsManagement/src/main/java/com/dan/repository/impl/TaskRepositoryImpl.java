/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Personnel;
import com.dan.pojo.Status;
import com.dan.pojo.Task;
import com.dan.repository.TaskRepository;
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
public class TaskRepositoryImpl implements TaskRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Object[]> getTask(int categoryId, boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rootTask = criteriaQuery.from(Task.class);
        Root rootStatus = criteriaQuery.from(Status.class);
        Root rootPersonnel = criteriaQuery.from(Personnel.class);
        Predicate pCategoryId = criteriaBuilder.equal(rootTask.get("idCategory"), categoryId);
        Predicate pActive = criteriaBuilder.equal(rootTask.get("active"), active);
        Predicate pTaskStatus = criteriaBuilder.equal(rootTask.get("idStatus"), rootStatus.get("id"));
        Predicate pTaskPersonnel = criteriaBuilder.equal(rootTask.get("idPersonnel"), rootPersonnel.get("id"));
        criteriaQuery.where(pCategoryId, pActive, pTaskStatus, pTaskPersonnel);
        criteriaQuery.multiselect(rootTask.get("id"), rootTask.get("name"), rootTask.get("startDate"),
                rootTask.get("finishDate"), rootTask.get("priority"), rootTask.get("percent"),
                rootTask.get("description"), rootPersonnel.get("lastName"),
                rootPersonnel.get("firstName"), rootStatus.get("name"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

}
