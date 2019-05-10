package com.example.demo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entity.ChanPin;
import com.example.demo.entity.ShouCang;
import com.example.demo.service.ChanPinService;
import com.example.demo.service.ShouCangService;

@Controller
@RequestMapping("/shoucang")
public class ShouCangController {
	
	@Autowired
	private ShouCangService shouCangService;
	@Autowired
	private ChanPinService chanPinService;
	
	  @RequestMapping(value = "/shoucang",method = RequestMethod.GET)
	    public void shoucang(HttpSession session,Integer id,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
	      String username = (String) session.getAttribute("username"); 
		  
	        ShouCang shouCang = new ShouCang();
	        ChanPin cart = chanPinService.findById(id);
	        shouCang.setJiage(cart.getJiage());
	        shouCang.setYouhui(cart.getYouhui());
	        shouCang.setShangpinming(cart.getShangpinming());
	        shouCang.setUsername(username);
	        shouCangService.baocun(shouCang);
	        response.sendRedirect(response.encodeRedirectURL("/index"));
	    }
	
	@RequestMapping( value = "/del",method = RequestMethod.GET)
	public void del(String shangpinming,HttpServletRequest request,HttpServletResponse response) throws IOException {
		shouCangService.delshangpin(shangpinming);
		response.sendRedirect(response.encodeRedirectURL("/index"));
	}
	
}
