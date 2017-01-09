package com.shop.model.service;

import java.util.List;

import com.shop.model.entity.Register;
import com.shop.model.entity.Role;

public interface RegisterService {
	public void add(Register register);

	public void edit(Register register);

	public void addAuth(Role role);

	public List getAllRegister();

}
