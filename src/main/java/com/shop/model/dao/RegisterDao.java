package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Register;
import com.shop.model.entity.Role;

public interface RegisterDao {
	public void add(Register register);

	public void edit(Register register);

	public void addAuth(Role role);

	public List getAllRegister();
}
