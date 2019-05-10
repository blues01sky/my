package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.entity.Cart;
import com.example.demo.entity.ChanPin;

@Service
public interface CartService {
	
	List<Cart> cartFindByUsername(String username);
	
	Cart cartFindById(int id);
	
	Integer delById(Integer id);
	
	Integer addcart(String goodsname,Integer goodsnum,double singleprice,double sumprice,String username);

	Integer updatanum(Integer goodsnum, Double sumprice, Integer id);
	
	Integer delByusername(String username);
}
