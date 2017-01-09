package com.shop.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.RegisterDao;
import com.shop.model.entity.Register;
import com.shop.model.entity.Role;

@Service

public class RegisterServiceImpl implements RegisterService {
	@Autowired
	private RegisterDao registerDao;

	@Transactional
	public void add(Register register) {
		registerDao.add(register);
	}

	@Transactional
	public void addAuth(Role role) {
		registerDao.addAuth(role);
	}

	@Transactional
	public void edit(Register register) {
		registerDao.edit(register);
	}

	@Transactional
	public List getAllRegister() {
		return registerDao.getAllRegister();
	}

}
