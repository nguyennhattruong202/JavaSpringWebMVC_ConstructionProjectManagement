/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Department;
import com.dan.pojo.Position;
import com.dan.repository.DepartmentRepository;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
    public Department add(Department department) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        department.setActive(Boolean.TRUE);
        department.setCreatedDate(new Date());
        session.save(department);
        return department;
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

    @Override
    public Map<String, String> getMapDepartment() {
        Map<String, String> result = new HashMap<>();
        List<Department> department = this.getDepartment();
        for (Department item : department) {
            result.put(item.getId().toString(), item.getName());
        }
        return result;
    }

    @Override
    public void removed(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            Query query = session.createQuery("UPDATE Department SET active=false WHERE id=:id");
            query.setParameter("id", id);
            query.executeUpdate();
        } catch (Exception e) {
            System.err.println("===Remove failed repo===" + e.getMessage());
        }
    }

    @Override
    public List<Department> getDepartmentWithKey(String keyword) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        if (keyword != null && !keyword.isEmpty()) {
            return session.createQuery("FROM Department WHERE active = true AND name LIKE :keyword OR description LIKE :keyword", Department.class).setParameter("keyword", String.format("%%%s%%", keyword)).list();
        } else {
            return session.createQuery("FROM Department WHERE active = true", Department.class).list();
        }
    }
}
