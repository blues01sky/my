package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.ConnectUs;

@Repository
public interface ConnectUsRespository extends JpaRepository<ConnectUs,Integer> {
	
}
