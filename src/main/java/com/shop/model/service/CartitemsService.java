package com.shop.model.service;

import java.util.List;

import com.shop.model.entity.Cartitems;

public interface CartitemsService {
	
	public void add(Cartitems cartitems);

	public List getAllCartitems();



}
