package com.milkyway.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.milkyway.model.Cart;

public interface CartDao extends JpaRepository<Cart, Integer> {

}