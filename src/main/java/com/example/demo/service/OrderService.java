package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Order;

public interface OrderService {
	Order save(Order order);
	
	List<Order> findByUsername(String username);
	
	int delByOrderid(String orderid);
	
	int updatezhuangtai(String zhuangtai,String orderid);
	
	Order finfByOrderid(String orderid);
	
	List<Order> findall();
	
	List<Order> findlikeusername(String username);
}
