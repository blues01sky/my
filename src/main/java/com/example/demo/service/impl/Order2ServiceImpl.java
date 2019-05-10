package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Order2;
import com.example.demo.repository.Order2Repository;
import com.example.demo.service.Order2Service;

@Service
public class Order2ServiceImpl implements Order2Service {
	
	@Autowired
	private Order2Repository order2Repository;
	
	@Override
	public Order2 save(Order2 order2){
		return order2Repository.save(order2);
	}
	
	@Override
	public List<Order2> findByOrderid(String orderid){
		return order2Repository.findByOrderid(orderid);
	}
	
	@Override
	public int delByOrderid(String orderid){
		return order2Repository.delByorderid(orderid);
	}
}
