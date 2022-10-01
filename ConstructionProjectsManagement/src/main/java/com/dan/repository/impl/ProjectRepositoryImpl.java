/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Participation;
import com.dan.pojo.Personnel;
import com.dan.pojo.Project;
import com.dan.pojo.Status;
import com.dan.repository.ProjectRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProjectRepositoryImpl implements ProjectRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> getProjects() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rootProject = criteriaQuery.from(Project.class);
        Root rootParticipation = criteriaQuery.from(Participation.class);
        Root rootPersonnel = criteriaQuery.from(Personnel.class);
        Root rootStatus = criteriaQuery.from(Status.class);
        criteriaQuery.where(criteriaBuilder.equal(rootProject.get("idStatus"), rootStatus.get("id")));
        criteriaQuery.multiselect(rootProject.get("id"), rootProject.get("name"), rootProject.get("startDate"),
                rootProject.get("finishDate"), rootProject.get("location"), rootProject.get("maxPerson"),
                rootProject.get("percent"), rootStatus.get("name"), rootProject.get("createdDate"));
        criteriaQuery.groupBy(rootProject.get("id"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }
}
