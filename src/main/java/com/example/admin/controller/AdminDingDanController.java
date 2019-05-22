package com.example.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entity.Order;
import com.example.demo.entity.Order2;
import com.example.demo.service.Order2Service;
import com.example.demo.service.OrderService;
import com.example.demo.vo.SuperOrder;

@Controller
@RequestMapping("/adminorder")
public class AdminDingDanController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private Order2Service order2Service;
	
	@RequestMapping(value = "/index",method = RequestMethod.GET)
    public void index(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		List<Order> list = orderService.findall();
		   
		List<SuperOrder> listsuperorder = new ArrayList<>();
		   for (Order order : list) {
			   
			   SuperOrder superOrder= new SuperOrder();
			   
			   List<Order2> list2 = order2Service.findByOrderid(order.getOrderid());
			   
			   superOrder.setListorder2(list2);
			   superOrder.setAddress(order.getAddress());
			   superOrder.setOrderid(order.getOrderid());
			   superOrder.setTelphone(order.getTelphone());
			   superOrder.setUsername(order.getUsername());
			   superOrder.setZhuangtai(order.getZhuangtai());
			   superOrder.setCreatime(order.getCreatime());
			   listsuperorder.add(superOrder);
		}
		   
		request.setAttribute("listsuperorder",listsuperorder);
		
		request.getRequestDispatcher("/WEB-INF/jsp/admin/dingdanguanli.jsp").forward(request, response);
    }
	
	@RequestMapping(value = "/quxiao",method = RequestMethod.GET)
    public void quxiao(String orderid,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		orderService.updatezhuangtai("商家已取消", orderid);
		response.sendRedirect(response.encodeRedirectURL("/adminorder/index"));
    }
	
	@RequestMapping(value = "/xiugai",method = RequestMethod.GET)
    public void xiugai(String xiugaiid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String xiugaiid1 = xiugaiid;
		request.setAttribute("xiugaiid1",xiugaiid1);
		request.getRequestDispatcher("/WEB-INF/jsp/admin/dingdanupdate.jsp").forward(request, response);
    }
	
	@RequestMapping(value = "/xiugai",method = RequestMethod.POST)
    public void update(String xiugaiid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String xiugaideid1 = request.getParameter("xiugaiid");
		System.out.println("xiugaideid::::::::::::::::::::::::::::::::::"+xiugaideid1);
		String zhuangtai = request.getParameter("zhuangtai");
		orderService.updatezhuangtai(zhuangtai, xiugaideid1);
		response.sendRedirect(response.encodeRedirectURL("/adminorder/index"));
    }
	
	@RequestMapping(value = "/search",method = RequestMethod.POST)
    public void search(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String username = request.getParameter("duixaing");
		System.out.println("username:::::::::::::::::::::::::::::::::::::::::"+username);
		List<Order> list = orderService.findlikeusername(username);
		List<SuperOrder> listsuperorder = new ArrayList<>();
		   for (Order order : list) {
			   
			   SuperOrder superOrder= new SuperOrder();
			   
			   List<Order2> list2 = order2Service.findByOrderid(order.getOrderid());
			   
			   superOrder.setListorder2(list2);
			   superOrder.setAddress(order.getAddress());
			   superOrder.setOrderid(order.getOrderid());
			   superOrder.setTelphone(order.getTelphone());
			   superOrder.setUsername(order.getUsername());
			   superOrder.setZhuangtai(order.getZhuangtai());
			   listsuperorder.add(superOrder);
		}
		   
		request.setAttribute("listsuperorder",listsuperorder);
		
		request.getRequestDispatcher("/WEB-INF/jsp/admin/dingdanguanli.jsp").forward(request, response);
    }
	
}
