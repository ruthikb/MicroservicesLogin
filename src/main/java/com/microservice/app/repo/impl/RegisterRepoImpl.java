package com.microservice.app.repo.impl;

import com.microservice.app.entity.RegisterEntity;
import com.microservice.app.repo.RegisterRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

@Repository
public class RegisterRepoImpl implements RegisterRepo {
    @Autowired
    EntityManagerFactory entityManagerFactory;

    @Override
    public boolean save(RegisterEntity registerEntity) {
        try {
            EntityManager entityManager = entityManagerFactory.createEntityManager();
            entityManager.getTransaction().begin();
            entityManager.persist(registerEntity);
            entityManager.getTransaction().commit();
            return true;
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }finally {
            if (entityManagerFactory != null) {
                entityManagerFactory.close();
            }
        }
        return false;
    }
}
