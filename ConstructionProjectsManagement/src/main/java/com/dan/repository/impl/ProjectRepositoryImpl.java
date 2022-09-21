/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Participation;
import com.dan.pojo.Personnel;
import com.dan.pojo.Project;
import com.dan.repository.ProjectRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author DELL
 */
@Repository
@PropertySource("classpath:databases.properties")
@Transactional
public class ProjectRepositoryImpl implements ProjectRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;

    @Override
    public List<Project> getProjects(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<Project> query = builder.createQuery(Project.class);
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
//        Root root = query.from(Project.class);

        Root rP = query.from(Project.class);
        Root rPa = query.from(Participation.class);
        Root rPe = query.from(Personnel.class);
//        query = query.select(rP);

        query.where(builder.equal(rPa.get("idProject"), rP.get("id")),
                builder.equal(rPa.get("idPersonnel"), rPe.get("id")),
                builder.equal(rPa.get("role"), "Truong du an"));
        query.multiselect(rP.get("id"), rP.get("image"), rP.get("name"), rP.get("description"),
                rPe.get("fullname"), rP.get("startDate"), rP.get("finishDate"), rP.get("idStatus"),
                rP.get("percent"), rP.get("active"));
        query.groupBy(rP.get("id"));

        if (kw != null) {
            Predicate p = builder.like(rP.get("name").as(String.class),
                    String.format("%%%s%%", kw));
            query = query.where(p);
        }
        query = query.orderBy(builder.desc(rP.get("id")));

        Query q = session.createQuery(query);

        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("page.size").toString());
            int start = (page - 1) * size;
            q.setFirstResult(start);
            q.setMaxResults(size);

        }

        return q.getResultList();
    }

    @Override
    public int countProject() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT COUNT(*) FROM Project");

        return Integer.parseInt(q.getSingleResult().toString());
    }

}
