/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Department;
import com.dan.repository.DepartmentRepository;
import java.util.Date;
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
public class DepartmentRepositoryImpl implements DepartmentRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Department> getDepartment() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Department> criteriaQuery = criteriaBuilder.createQuery(Department.class);
        Root root = criteriaQuery.from(Department.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("active"), true));
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public boolean updateDepartment(Department department) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            department.setActive(true);
            department.setCreatedDate(new Date());
            session.update(department);
            return true;
        } catch (Exception e) {
            System.err.println("===Update failed===" + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean addDepartment(Department department) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            department.setActive(true);
            department.setCreatedDate(new Date());
            session.save(department);
            return true;
        } catch (Exception e) {
            System.err.println("===Add faile===" + e.getMessage());
            return false;
        }
    }

    @Override
    public Department findDepartmentById(int departmentId) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Department> criteriaQuery = criteriaBuilder.createQuery(Department.class);
        Root root = criteriaQuery.from(Department.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("id"), departmentId));
        Query query = session.createQuery(criteriaQuery);
        return (Department) query.getSingleResult();
    }

}
