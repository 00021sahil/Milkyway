package com.milkyway.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.milkyway.model.Cart;
import com.milkyway.model.Product;
import com.milkyway.service.CartService;
import com.milkyway.service.ProductService;

import jakarta.servlet.http.HttpSession;



@Controller
public class ProductController {
	
	@Autowired
	private CartService cartService;

	@Autowired
	private ProductService productService;

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
	public String addProduct(@ModelAttribute Product product,
	        @RequestParam("imageFile") MultipartFile imageFile,
	        Model model) {

	    boolean isAdded = productService.addProduct(product, imageFile);

	    if (isAdded) {
	        model.addAttribute("msg", "Product Added Successfully...");
	    } else {
	        model.addAttribute("msg", "Something went wrong.");
	    }

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
		return "shop";
	}
	
	
	
	@GetMapping("/orders")
	public String showOrdersPage(){
	    return "orders";
	}
	
	@GetMapping("/customerinfo")
	public String custommerInfo() {
		return "customerinfo";
	}
	
	
	@PostMapping("/generateInvoice")
	public String generateInvoice(
			@RequestParam("customerName")String customerName,
			@RequestParam("mobile")String mobile,
			@RequestParam("email")String email,
			@RequestParam("occasion")String occasion,
			@RequestParam("address")String address,
			@RequestParam("city")String city,
			@RequestParam("pincode")String pincode,
			@RequestParam("deliveryDate")String deliveryDate,
			@RequestParam("notes")String notes,
			HttpSession session,
			Model model) {
			
			
			List<Cart>cartList = cartService.getAllCartItems();
			
			double total = cartService.getGrandTotal();
			
			double advanceAmount = total*0.20;
			double remainingAmount = total*0.80;
			double subtotal = total;
			double cgst = total*0.09;
			double sgst = total*0.09;
			
			double grandTotal = subtotal + cgst + sgst ;
			
			model.addAttribute("cartList",cartList);
			model.addAttribute("grandTotal", grandTotal);
			model.addAttribute("advanceAmount",advanceAmount);
			model.addAttribute("remainingAmount",remainingAmount);
			model.addAttribute("subtotal", subtotal);
			model.addAttribute("cgst", cgst);
			model.addAttribute("sgst", sgst);
			
			
			session.setAttribute("customerName", customerName);
			session.setAttribute("mobile", mobile);
			session.setAttribute("email", email);
			session.setAttribute("occasion", occasion);
			session.setAttribute("address", address);
			session.setAttribute("city", city);
			session.setAttribute("pincode", pincode);
			session.setAttribute("deliveryDate", deliveryDate);
			session.setAttribute("notes", notes);
			
		return "generateInvoice";
	}

}
