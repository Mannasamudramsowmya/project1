package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.model.entity.Cartitems;

@Repository

public class CartitemsDaoImpl implements CartitemsDao{
	@Autowired
	private SessionFactory session;
	@Override
	public void add(Cartitems cartitems) {
		session.getCurrentSession().save(cartitems);
	}
	
	@Override
	public List getAllCartitems() {
		
		return session.getCurrentSession().createQuery("from Cartitems ").list();

	}

	
}
