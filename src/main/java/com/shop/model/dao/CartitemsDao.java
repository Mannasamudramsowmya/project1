package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Cartitems;

public interface CartitemsDao {
	
	public void add(Cartitems cartitems);
	
	public 	List getAllCartitems();


}
