package com.milkyway.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.milkyway.model.Product;
import com.milkyway.service.ProductService;



@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	String msg;
	
	
	@GetMapping("/")
	public String homePage() {
		return "home";
	}
	
	@GetMapping("/add-Product")
	public String addProductForm() {
		return "addProduct";
	}
	
	@PostMapping("/add-Product")
	public String addProduct(@ModelAttribute Product product, Model model) {
		boolean isAdded = productService.addProduct(product);
		if(isAdded) {
			msg="Product Added Successfully....";
		}else {
			msg="Something went wrong";
		}
		model.addAttribute("msg", msg);
		return "addProduct";
	}

	@GetMapping("/get-all-Products")
	public String getAllProducts(Model model) {
		List<Product> productList = productService.getAllProduct();
		model.addAttribute("productList", productList);
		return "productList";
		
	}
	
	@GetMapping("/get-Shop")
	public String getShop(Model model) {
		List<Product> productList = productService.getAllProduct();
		model.addAttribute("productList", productList);
		return "shopping";
	}
	
	@GetMapping("/orders")
	public String showOrdersPage(){
	    return "orders";
	}

}

