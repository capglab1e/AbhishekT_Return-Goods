package com.cg.CapStore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.CapStore.dao.ICapstoreDao;
import com.cg.CapStore.dto.Order;

@Service
@Transactional
public class CapStoreServiceImpl implements ICapstoreService {
	@Autowired
	ICapstoreDao capDao;

	@Override
	public List<Order> getAllDetails() {
		// TODO Auto-generated method stub
		return capDao.getAllDetails();
	}

}
