package com.example.demo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entity.Cart;
import com.example.demo.entity.Message;
import com.example.demo.entity.Order;
import com.example.demo.entity.Order2;
import com.example.demo.service.CartService;
import com.example.demo.service.MessageService;
import com.example.demo.service.Order2Service;
import com.example.demo.service.OrderService;
import com.example.demo.util.GetOrderId;

@Controller
@RequestMapping("/order")
public class OrderController {
	  @Autowired
	  private OrderService orderService;
	  @Autowired
	  private Order2Service order2Service;
	  @Autowired
	  private CartService cartService;
	  @Autowired
	  private MessageService messageService;
	  
	  @RequestMapping(value = "/zhifu",method = RequestMethod.POST)
	    public void updatezhifu(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		  String orderid = request.getParameter("orderid");
		  orderService.updatezhuangtai("已支付",orderid);
		  System.out.println("支付成功！");
		  response.sendRedirect(response.encodeRedirectURL("/message/myorder"));
	  }
	  
	  @RequestMapping(value = "/quxiao",method = RequestMethod.GET)
	    public void quxaiodingdan(String orderid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		  orderService.updatezhuangtai("用户已取消",orderid);
		  System.out.println("取消订单成功！");
		  System.out.println("支付成功！");
		  response.sendRedirect(response.encodeRedirectURL("/message/myorder"));
	  }
	  
	  @RequestMapping(value = "/zaicixiadan",method = RequestMethod.GET)
	    public void zaicixiadan(String orderid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		  Order order = orderService.finfByOrderid(orderid);
		  String neworderid = GetOrderId.getOrderIdByTime();
		  order.setOrderid(neworderid);
		  order.setZhuangtai("已提交");
		  System.out.println("order::::::::::::::::::::::::::::::::::::::"+order);
		  orderService.save(order);
		  List<Order2> listorder2 = order2Service.findByOrderid(orderid);
		  for (Order2 order2 : listorder2) {
			  order2.setOrderid(neworderid);
			  order2Service.save(order2);
			  System.out.println("order2::::::::::::::::::::::::::::::::::::::::"+order2);
		}
		  response.sendRedirect(response.encodeRedirectURL("/message/myorder"));
	  }
	  
	  //提交后查看状态后再支付
	  @RequestMapping(value = "/yijiaohouzhifu",method = RequestMethod.GET)
	    public void quxiaohouzaizhifu(String orderid,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		  Order order = orderService.finfByOrderid(orderid);
		  session.setAttribute("order", order);
		  response.sendRedirect(response.encodeRedirectURL("/order/index"));
	  }
	  
	  
	  @RequestMapping(value = "/addcart",method = RequestMethod.GET)
	    public void orderIndex(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		  String username = (String) session.getAttribute("username");
		  System.out.println("username::::::::::::::::::::::::::::"+username);
		  Message message = messageService.findByUsername(username);
		  
		  if (message!=null) {//如果没有这个用户信息，那么跳到个人中心首页，让其设置用户信息
			  
			  String orderid = GetOrderId.getOrderIdByTime();
				 
			  String telphone = message.getTelphone();
			  String address = message.getAddress();
			  Order order = new Order();
			  order.setAddress(address);
			  order.setOrderid(orderid);
			  order.setTelphone(telphone);
			  order.setUsername(username);
			  order.setZhuangtai("已提交");
			  orderService.save(order);
			  session.setAttribute("order", order);
			  List<Cart> list = cartService.cartFindByUsername(username);
			  for (Cart cart : list) {
				Order2 order2 = new Order2();
				order2.setGoodsname(cart.getGoodsname());
				order2.setGoodsnum(cart.getGoodsnum());
				order2.setSingleprice(cart.getSingleprice());
				order2.setOrderid(orderid);
				order2Service.save(order2);
			  }
			  cartService.delByusername(username);
			  response.sendRedirect(response.encodeRedirectURL("/order/index"));
			 
		}else {
			System.err.println("没有收货地址请添加");
			
			response.sendRedirect(response.encodeRedirectURL("/message/myindex"));
		} //如果地址表有地址，那么不在保存，如果没有就保存在数据库中
	  }
	  
	  @RequestMapping(value = "/index",method = RequestMethod.GET)
	  public void index(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		  String username = (String) session.getAttribute("username");
		  if (username == null) {
			  response.sendRedirect(response.encodeRedirectURL("/user/login"));
		}else {
		  Order order = (Order) session.getAttribute("order");
		  Message message = messageService.findByUsername(username);
		  
		  List<Order2> findresults = order2Service.findByOrderid(order.getOrderid());
		  double zongjia = 0;
		  for (Order2 order2 : findresults) {
			zongjia = zongjia + order2.getSingleprice() * order2.getGoodsnum();
		}
		  request.setAttribute("findresults",findresults);
		  request.setAttribute("message",message);
		  request.setAttribute("zongjia",zongjia);
		}
		  request.getRequestDispatcher("/WEB-INF/jsp/show/order.jsp").forward(request, response);
	  }
	 
}
