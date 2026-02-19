package com.milkyway.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	
	private String category;
	private String brand;
	private String productName;
	private int quantity;
	private double price;
	private String imageUrl;
	
	public Product() {
		
	}

	public Product(int pid, String category, String brand, String productName, int quantity, double price,
			String imageUrl) {
		super();
		this.pid = pid;
		this.category = category;
		this.brand = brand;
		this.productName = productName;
		this.quantity = quantity;
		this.price = price;
		this.imageUrl = imageUrl;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", category=" + category + ", brand=" + brand + ", productName=" + productName
				+ ", quantity=" + quantity + ", price=" + price + ", imageUrl=" + imageUrl + "]";
	}
	
	

}
