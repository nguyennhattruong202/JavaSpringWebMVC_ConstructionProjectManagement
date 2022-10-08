/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Personnel;
import com.dan.pojo.Project;
import com.dan.pojo.Status;
import com.dan.repository.ProjectRepository;
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
public class ProjectRepositoryImpl implements ProjectRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Object[]> getProjects() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rootProject = criteriaQuery.from(Project.class);
        Root rootStatus = criteriaQuery.from(Status.class);
        Root rootPersonnel = criteriaQuery.from(Personnel.class);
        Predicate pProjectStatus = criteriaBuilder.equal(rootProject.get("idStatus"), rootStatus.get("id"));
        Predicate pProjectPersonnel = criteriaBuilder.equal(rootProject.get("idPersonnel"), rootPersonnel.get("id"));
        Predicate pActive = criteriaBuilder.equal(rootProject.get("active"), true);
        criteriaQuery.where(pProjectStatus, pActive, pProjectPersonnel);
        criteriaQuery.multiselect(rootProject.get("id"), rootProject.get("name"), rootProject.get("description"),
                rootProject.get("image"), rootProject.get("location"), rootProject.get("startDate"),
                rootProject.get("finishDate"), rootProject.get("createdDate"), rootProject.get("maxPerson"),
                rootProject.get("percent"), rootStatus.get("name"), rootPersonnel.get("lastName"), rootPersonnel.get("firstName"));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public boolean removedProject(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaUpdate<Project> criteriaUpdate = criteriaBuilder.createCriteriaUpdate(Project.class);
        Root root = criteriaUpdate.from(Project.class);
        criteriaUpdate.set("active", false);
        criteriaUpdate.where(criteriaBuilder.equal(root.get("id"), id));
        int result = session.createQuery(criteriaUpdate).executeUpdate();
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Project findProjectById(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Project> criteriaQuery = criteriaBuilder.createQuery(Project.class);
        Root root = criteriaQuery.from(Project.class);
        Predicate pActive = criteriaBuilder.equal(root.get("active"), true);
        Predicate pId = criteriaBuilder.equal(root.get("id"), id);
        criteriaQuery.select(root).where(pActive, pId);
        Query query = session.createQuery(criteriaQuery);
        return (Project) query.getSingleResult();
    }

    @Override
    public boolean addProject(Project project) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            session.save(project);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateProject(Project project) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            session.update(project);
            return true;
        } catch (Exception e) {
            return false;

        }
    }
}
