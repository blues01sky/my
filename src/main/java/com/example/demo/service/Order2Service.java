package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Order2;

public interface Order2Service {
	Order2 save(Order2 order2);
	
	List<Order2> findByOrderid(String orderid);
	
	int delByOrderid(String orderid);
}
