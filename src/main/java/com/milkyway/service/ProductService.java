package com.milkyway.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.milkyway.dao.ProductDao;
import com.milkyway.model.Product;

@Service
public class ProductService {

	@Autowired
	ProductDao productDao;

	public boolean addProduct(Product product, MultipartFile imageFile) {

	    try {

	        // Upload image to static/images
	        String uploadPath = new File("src/main/resources/static/images").getAbsolutePath();

	        File folder = new File(uploadPath);

	        if (!folder.exists()) {
	            folder.mkdirs();
	        }

	        String fileName = imageFile.getOriginalFilename();

	        File destination = new File(folder, fileName);

	        imageFile.transferTo(destination);

	        // Save image name in database
	        product.setImageUrl(fileName);

	        Product savedProduct = productDao.save(product);

	        return savedProduct != null;

	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}

	public List<Product> getAllProduct() {
		return productDao.findAll();
	}

}