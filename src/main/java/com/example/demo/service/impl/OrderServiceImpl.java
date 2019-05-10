package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Order;
import com.example.demo.repository.OrderRepository;
import com.example.demo.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Override
	public Order save(Order order){
		return orderRepository.save(order);
	}
	
	@Override
	public List<Order> findByUsername(String username){
		return orderRepository.findByUsername(username);
	}
	
	@Override
	public int delByOrderid(String orderid){
		return orderRepository.delByorderid(orderid);
	}

	@Override
	public int updatezhuangtai(String zhuangtai, String orderid) {
		return orderRepository.updatezhuangtai(zhuangtai, orderid);
	}

	@Override
	public Order finfByOrderid(String orderid) {
		return orderRepository.findByOrderid(orderid);
	}

	@Override
	public List<Order> findall() {
		return orderRepository.findAll();
	}

	@Override
	public List<Order> findlikeusername(String username) {
		return orderRepository.findByUsernameContaining(username);
	}
	
}
