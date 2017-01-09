package com.shop.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.CartitemsDao;
import com.shop.model.entity.Cartitems;


@Service

public class CartitemsServiceImpl implements CartitemsService{
	@Autowired
	private CartitemsDao cartitemsDao;

	@Transactional
	public void add(Cartitems cartitems) {
		cartitemsDao.add(cartitems);
	}
	@Transactional
	public List getAllCartitems() {
		return cartitemsDao.getAllCartitems();
	}
 
}
