package com.milkyway.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.milkyway.dao.ProductDao;
import com.milkyway.model.Product;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;

	public boolean addProduct(Product product) {
		Product saveProduct = productDao.save(product);
		if(saveProduct != null) {
			return true;
		}
		return false;
	}

	public List<Product> getAllProduct() {
		return productDao.findAll();
	}


}
