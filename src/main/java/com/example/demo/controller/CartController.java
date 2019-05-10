package com.example.demo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.entity.Cart;
import com.example.demo.service.CartService;

@Controller
@RequestMapping("/cart1")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/cart",method = RequestMethod.GET)
	@ResponseBody
	public void findbyusername(HttpSession session,String username,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		List<Cart> findcartresults = new ArrayList<Cart>();
		
		username  = (String) session.getAttribute("username");
		if (username == null) {
			request.getRequestDispatcher("/WEB-INF/jsp/show/regist.jsp").forward(request, response);
		}
		findcartresults = cartService.cartFindByUsername(username);
		
		double number = 0;
		
		for (Cart cart : findcartresults) {
			number = number + cart.getSingleprice() * cart.getGoodsnum();
		}
		
		System.out.println("number::::::::::::::::::::::::::::::::"+number);
		
		request.setAttribute("findcartresults",findcartresults);
		
		session.setAttribute("number",number);
		
		request.getRequestDispatcher("/WEB-INF/jsp/show/cart.jsp").forward(request, response);
		
	}
	
	@RequestMapping(value = "/cart1",method = RequestMethod.POST)
	@ResponseBody
	public void addtocart(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		Integer goodsnum = Integer.parseInt(request.getParameter("shuliang"));
		String goodsname = String.valueOf(request.getParameter("shangpinming"));
		double singleprice = Double.parseDouble(request.getParameter("danjia"));
		double sumprice = goodsnum * singleprice;
		
		String username1 = (String) session.getAttribute("username");
		
		cartService.addcart(goodsname, goodsnum, singleprice, sumprice, username1);
		
		System.out.println("添加购物车数据成功！");
		
		response.sendRedirect(response.encodeRedirectURL("/cart1/cart"));
	}
	
	@RequestMapping(value = "/jia",method = RequestMethod.POST)
	@ResponseBody
	public void cartnumjia(HttpSession session,String username,@RequestBody Cart cart,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		
		Integer goodsnum = cart.getGoodsnum();
		
		goodsnum++;
		
		Cart cart2 = cartService.cartFindById(cart.getId());
		
		cartService.updatanum(goodsnum,goodsnum * cart2.getSingleprice(),cart.getId());
		
		List<Cart> findcartresults = new ArrayList<Cart>();
		
		username  = (String) session.getAttribute("username");
		
		findcartresults = cartService.cartFindByUsername(username);
		
		request.setAttribute("findcartresults",findcartresults);
		
		request.getRequestDispatcher("/WEB-INF/jsp/show/cart.jsp").forward(request, response);
		
	}
	
	@RequestMapping(value = "/jian",method = RequestMethod.POST)
	@ResponseBody
	public void cartnumjian(HttpSession session,String username,@RequestBody Cart cart,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		
		Integer goodsnum = cart.getGoodsnum();
		
		goodsnum--;
		
		Cart cart2 = cartService.cartFindById(cart.getId());
		
		cartService.updatanum(goodsnum,goodsnum * cart2.getSingleprice(),cart.getId());
		
		List<Cart> findcartresults = new ArrayList<Cart>();
		
		username  = (String) session.getAttribute("username");
		
		findcartresults = cartService.cartFindByUsername(username);
		
		request.setAttribute("findcartresults",findcartresults);
		
		request.getRequestDispatcher("/WEB-INF/jsp/show/cart.jsp").forward(request, response);
		    }
	
		@RequestMapping(value = "/del",method = RequestMethod.GET)
		@ResponseBody
		public void deletebyid(HttpSession session,String id,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
			int id1 = Integer.parseInt(id);
			cartService.delById(id1);
			System.out.println("删除购物车数据成功！");
			response.sendRedirect(response.encodeRedirectURL("/cart1/cart"));
		}
		
}
