package com.cg.CapStore.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.cg.CapStore.dto.Order;
@Repository("capDao")
public class CapStoreDaoImpl implements ICapstoreDao {
	@PersistenceContext
	EntityManager manager;

	@Override
	public List<Order> getAllDetails() {
		// TODO Auto-generated method stub
		Query query = manager.createQuery("FROM Order");
		return query.getResultList();
	}
}
