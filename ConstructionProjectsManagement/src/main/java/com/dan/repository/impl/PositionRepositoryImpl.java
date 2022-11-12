/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository.impl;

import com.dan.pojo.Position;
import com.dan.repository.PositionRepository;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
public class PositionRepositoryImpl implements PositionRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;

    @Override
    public List<Position> getPosition(boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Position> criteriaQuery = criteriaBuilder.createQuery(Position.class);
        Root root = criteriaQuery.from(Position.class);
        Predicate pActive = criteriaBuilder.equal(root.get("active"), active);
        criteriaQuery.select(root).where(pActive);
        Query query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    @Override
    public Position findPositionById(int id, boolean active) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Position> criteriaQuery = criteriaBuilder.createQuery(Position.class);
        Root root = criteriaQuery.from(Position.class);
        Predicate pActive = criteriaBuilder.equal(root.get("active"), active);
        Predicate pId = criteriaBuilder.equal(root.get("id"), id);
        criteriaQuery.select(root).where(criteriaBuilder.and(pActive, pId));
        Query query = session.createQuery(criteriaQuery);
        return (Position) query.getSingleResult();
    }

    @Override
    public void removed(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            Query query = session.createQuery("UPDATE Position SET active=false WHERE id=:id");
            query.setParameter("id", id);
            query.executeUpdate();
        } catch (Exception e) {
            System.err.println("===Remove failed repo===" + e.getMessage());
        }
    }

    @Override
    public boolean updatePosition(int id, String name, String description) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaUpdate<Position> criteriaUpdate = criteriaBuilder.createCriteriaUpdate(Position.class);
        Root root = criteriaUpdate.from(Position.class);
        criteriaUpdate.set("name", name);
        criteriaUpdate.set("description", description);
        criteriaUpdate.where(criteriaBuilder.equal(root.get("id"), id));
        int result = session.createQuery(criteriaUpdate).executeUpdate();
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Position addPosition(String name, String description) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        Position position = new Position();
        position.setName(name);
        position.setDescription(description);
        position.setActive(true);
        session.save(position);
        return position;
    }

    @Override
    public Map<String, String> getPosition() {
        Map<String, String> result = new HashMap<>();
        List<Position> position = this.getPosition(true);
        for (Position item : position) {
            result.put(item.getId().toString(), item.getName());
        }
        return result;
    }

    @Override
    public void update(Position position) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        try {
            session.update(position);
        } catch (Exception e) {
            System.err.println("===Remove failed repo===" + e.getMessage());
        }
    }

}
