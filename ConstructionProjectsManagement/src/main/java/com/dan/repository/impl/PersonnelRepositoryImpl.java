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
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

@Repository
@Transactional
public class PersonnelRepositoryImpl implements PersonnelRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    @Autowired
    private Environment env;

    @Override
    public List<Object[]> getAllPersonnel(Map<String, String> params, int page, boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> criteriaQuery = criteriaBuilder.createQuery(Object[].class);
        Root rootPersonnel = criteriaQuery.from(Personnel.class);
        Root rootPosition = criteriaQuery.from(Position.class);
        Root rootDepartment = criteriaQuery.from(Department.class);
        criteriaQuery.where(criteriaBuilder.equal(rootPersonnel.get("idPosition"), rootPosition.get("id")),
                criteriaBuilder.equal(rootPersonnel.get("idDepartment"), rootDepartment.get("id")),
                criteriaBuilder.equal(rootPersonnel.get("active"), active));
        criteriaQuery.multiselect(rootPersonnel.get("id"), rootPersonnel.get("avatar"),
                rootPersonnel.get("fullname"), rootPersonnel.get("birthday"),
                rootPersonnel.get("phone"), rootPersonnel.get("email"), rootPersonnel.get("address"),
                rootPosition.get("name"), rootDepartment.get("name"), rootPersonnel.get("role"));
        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String kwName = params.get("kwName");
            if (kwName != null && !kwName.isEmpty()) {
                Predicate p = criteriaBuilder.like(rootPersonnel.get("name").as(String.class), String.format("%%%s%%", kwName));
                predicates.add(p);
            }
            String kwPhone = params.get("kwPhone");
            if (kwPhone != null && !kwPhone.isEmpty()) {
                Predicate p = criteriaBuilder.like(rootPersonnel.get("phone").as(String.class), String.format("%%%s%%", kwPhone));
                predicates.add(p);
            }
            String kwEmail = params.get("kwEmail");
            if (kwEmail != null && !kwEmail.isEmpty()) {
                Predicate p = criteriaBuilder.like(rootPersonnel.get("email").as(String.class), String.format("%%%s%%", kwName));
                predicates.add(p);
            }

            criteriaQuery.where(predicates.toArray(Predicate[]::new));
        }
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

}
