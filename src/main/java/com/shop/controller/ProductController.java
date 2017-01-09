package com.shop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shop.model.entity.Product;
import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	ServletContext servletContext;

	@RequestMapping("/product")
	public String setupForm(Map<String, Object> map) {
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		map.put("categoryList", categoryService.getAllCategory());
		return "product";
	}
    @RequestMapping("/delete")
    public String delete(@RequestParam("val")int id,Map<String, Object> map){
    	productService.delete(id);
    	return "prolist";
    }
	
	@RequestMapping(value = "/product.do", method = RequestMethod.POST)
	public String uploadFileHandler(@RequestParam("name") String name,
			@RequestParam("file") MultipartFile file, @ModelAttribute("product") Product product, BindingResult result,
			@RequestParam String action, Map<String, Object> map, ModelMap m) {
		if (result.hasErrors()) {
			return "product";
		}
		Product productResult = new Product();
		switch (action.toLowerCase()) {
		case "add":
			productService.add(product);
			productResult = product;
			break;
		case "edit":
			productService.edit(product);
			productResult = product;
			break;
		case "delete":
			productService.delete(product.getproductid());
			productResult = new Product();
			break;
		case "search":
			Product searchedProduct = productService.getProduct(product.getproductid());
			productResult = searchedProduct != null ? searchedProduct : new Product();
			break;
		}
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = servletContext.getRealPath("/");
				File dir = new File(rootPath + File.separator + "resources/images");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir + File.separator + product.getImagename() + ".jpg");

				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				System.out.println(serverFile);

				map.put("product", productResult);
				map.put("productList", productService.getAllProduct());
				m.addAttribute("message", "You successfully uploaded file");
				return "view";

			}catch (Exception e) {
				return "You failed to upload " + product.getImagename() + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + product.getImagename() + " because the file was empty.";
		}

	}
}
