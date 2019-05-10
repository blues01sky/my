package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Cart;
import com.example.demo.repository.CartRepository;
import com.example.demo.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartRepository cartRepository;
	
	@Override
	public List<Cart> cartFindByUsername(String username){
		return cartRepository.findByUsername(username);
	}
	
	@Override
	public Integer updatanum(Integer goodsnum,Double sumprice, Integer id) {
		return cartRepository.updatanum(goodsnum,sumprice,id);
	}
	
	@Override
	public Cart cartFindById(int id){
		return cartRepository.findById(id);
	}
	
	@Override
	public Integer delById(Integer id){
		return cartRepository.delById(id);
	}
	
	@Override
	public Integer addcart(String goodsname,Integer goodsnum,double singleprice,double sumprice,String username) {
		return cartRepository.addcart(goodsname, goodsnum, singleprice, sumprice, username);
	}
	
	@Override
	public Integer delByusername(String username) {
		return cartRepository.delByusername(username);
	}

}
