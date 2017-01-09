package com.shop.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.entity.Category;
import com.shop.model.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/category")
	public String setupForm(Map<String, Object> map) {
		Category category = new Category();
		map.put("category", category);
		map.put("categoryList", categoryService.getAllCategory());
		return "category";
	}

	@RequestMapping("/cateview")
	public String getviewform(Map<String, Object> map) {
		Category category = new Category();
		map.put("category", category);
		map.put("categoryList", categoryService.getAllCategory());
		return "cateview";
	}

	@RequestMapping(value = "/category.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute Category category, BindingResult result, @RequestParam String action,
			Map<String, Object> map) {
		Category categoryResult = new Category();
		switch (action.toLowerCase()) {
		case "add":
			categoryService.add(category);
			categoryResult = category;
			break;
		case "edit":
			categoryService.edit(category);
			categoryResult = category;
			break;
		case "delete":
			categoryService.delete(category.getcategoryid());
			categoryResult = new Category();
			break;
		case "search":
			Category searchedCategory = categoryService.getCategory(category.getcategoryid());
			categoryResult = searchedCategory != null ? searchedCategory : new Category();
			break;
		}
		map.put("category", categoryResult);
		map.put("categoryList", categoryService.getAllCategory());
		return "category";
	}

}
