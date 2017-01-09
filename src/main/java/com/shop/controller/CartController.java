package com.shop.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Product;
import com.shop.model.service.CartitemsService;
import com.shop.model.service.ProductService;


@Controller

public class CartController {
	@Autowired
	private CartitemsService cs;
	@Autowired
	private ProductService productService;

	@RequestMapping("/cart")
	public String getcart(@RequestParam("value")int id,Map<String,Object> map )
	{
		Cartitems cart=new Cartitems();
		Product pr=productService.getProduct(id);
		cart.setQuantity("1");
		cart.setProduct(pr);//foreign key of Product id

		
		cs.add(cart);
		map.put("cartList", cs.getAllCartitems());
		
	return "cart";
	}
	
	}
