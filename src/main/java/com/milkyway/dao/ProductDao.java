package com.milkyway.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.milkyway.model.Product;

public interface ProductDao extends JpaRepository<Product, Integer> {

}
