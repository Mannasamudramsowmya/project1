package com.shop.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.UserBeanDao;
import com.shop.model.entity.UserBean;

@Service
public class UserBeanServiceImpl implements UserBeanService {
	@Autowired
	private UserBeanDao userbeanDao;

	@Transactional
	public void add(UserBean userbean) {
		userbeanDao.add(userbean);
	}
}
