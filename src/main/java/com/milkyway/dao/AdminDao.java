package com.milkyway.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.milkyway.model.Admin;

@Repository
public interface AdminDao extends JpaRepository<Admin, Integer>{

    Admin findByEmail(String email);

}