package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entity.Cart;
import com.example.demo.service.CartService;

@Controller
public class Test {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/test",method = RequestMethod.GET)
    public String TestLogin(HttpServletRequest request){
		List<Cart> carts = cartService.cartFindByUsername("jiang");
		request.setAttribute("carts", carts);
		System.out.println(carts);
        return "show/test";
    }
	
	
	
	
}
