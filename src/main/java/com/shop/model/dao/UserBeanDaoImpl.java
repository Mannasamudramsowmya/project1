package com.shop.model.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.UserBean;
@Repository
@Transactional

public class UserBeanDaoImpl implements UserBeanDao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(UserBean userbean) {
		session.getCurrentSession().save(userbean);
	}
}
