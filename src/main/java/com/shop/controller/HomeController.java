package com.shop.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.entity.Product;
import com.shop.model.service.CartitemsService;
import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;

@Controller

public class HomeController {
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value={"/","index"})
	public String showMessage(Map<String, Object> map) {
		map.put("categoryList", categoryService.getAllCategory());

		return "index";
	}

	@Autowired
	private ProductService productService;
	
    @RequestMapping("/prolist")
    public String list()
    {
    	return "prolist";
    }
	@RequestMapping("/game")
	public @ResponseBody List<Product>showM() {
	return productService.getAllProduct();
	}

	@RequestMapping("/allproduct")

	public String show(@RequestParam("val") String id, Map<String, Object> map) {
		map.put("productList", productService.getAllProductfromcategory(id));
		return "prolist";
	}

	@RequestMapping("/login")
	public ModelAndView getLoginForm(@RequestParam(required = false) String authfailed, String logout, String denied) {
		String message = "";
		if (authfailed != null) {
			message = "Invalid username of password, try again !";
		} else if (logout != null) {
			message = "Logged Out successfully, login again to continue !";
		} else if (denied != null) {
			message = "Access denied for this user !";
		}
		return new ModelAndView("login", "message", message);
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect: index?logout";
	}

	@RequestMapping("/user")
	public String geUserPage() {
		return "user";
	}

	@RequestMapping("/admin")
	public String geAdminPage() {
		return "admin";
	}

	@RequestMapping("/403page")
	public String ge403denied() {
		return "redirect:login?denied";
	}
	
	
	 @Autowired
		private CartitemsService cs;

	@RequestMapping("/productdetails")
    
	public String shows(@RequestParam("ob") int id, Map<String, Object> map,@ModelAttribute (value="product") Product product) {
	    Product pr =productService.getProduct(id);
		map.put("product",pr );
		return "productdetails";
	}
}
