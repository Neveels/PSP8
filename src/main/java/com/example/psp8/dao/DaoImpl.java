package com.example.psp8.dao;

import com.example.psp8.model.AddressBook;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.util.List;
import java.util.function.Consumer;

public class DaoImpl implements Dao {

    private EntityManager entityManager;

    public DaoImpl() {
        this.entityManager = Persistence.createEntityManagerFactory("com.example.weather")
                .createEntityManager();;
    }

    @Override
    public List<AddressBook> getAll() {
        Query query = entityManager.createQuery("SELECT e FROM AddressBook e");
        return query.getResultList();
    }

    @Override
    public void save(AddressBook addressBook) {

    }

    @Override
    public void update(AddressBook addressBook) {

    }

    @Override
    public void delete(AddressBook addressBook) {
        executeTransactional(entityManager -> entityManager.remove(addressBook));
    }

    private void executeTransactional(Consumer<EntityManager> action) {
        EntityTransaction tx = entityManager.getTransaction();
        try {
            tx.begin();
            action.accept(entityManager);
            tx.commit();
        } catch (RuntimeException e) {
            tx.rollback();
            throw e;
        }
    }
}
