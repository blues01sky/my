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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Message;
import com.example.demo.entity.Order;
import com.example.demo.entity.Order2;
import com.example.demo.service.MessageService;
import com.example.demo.service.Order2Service;
import com.example.demo.service.OrderService;
import com.example.demo.service.UserService;
import com.example.demo.vo.SuperOrder;

@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    private MessageService messageService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private Order2Service order2Service;
    @Autowired
    private UserService userService;
   
//    @RequestMapping(value = "/Doctor/index", method = RequestMethod.GET)
//    public void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        request.setAttribute("realName", "吕昊昕");
//        request.getRequestDispatcher("/index.jsp").forward(request, response);
//    }
//    
    
    
//    @RequestMapping(value = "/que/index", method = {RequestMethod.GET, RequestMethod.POST})
//    public String index(){
//        return "forward:/jsp/que/quezhuye.jsp";
//    }
    
   @RequestMapping(value = "/addmessage", method = RequestMethod.POST)
   public void addmessge(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
	   String username = (String) session.getAttribute("username");
	   String tel = request.getParameter("tel");
	   String address = request.getParameter("address");
	   String password = userService.findByUsername(username).getPassword();
	   Message message = new Message();
	   message.setAddress(address);
	   message.setUsername(username);
	   message.setTelphone(tel);
	   message.setPassword(password);
	   messageService.save(message);
	   System.out.println("添加个人信息成功！");
//	   request.getRequestDispatcher("/WEB-INF/jsp/show/myindex.jsp").forward(request, response);
	   response.sendRedirect(response.encodeRedirectURL("/message/myindex"));
    }
   
   @RequestMapping(value = "/myindex", method = RequestMethod.GET)
   public void index(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		String username = (String) session.getAttribute("username");
   		Message message = messageService.findByUsername(username);
   		System.out.println("message::::::::::::::::::::::::::::"+message);
   		if (message == null) {
   			request.getRequestDispatcher("/WEB-INF/jsp/show/addmessage.jsp").forward(request, response);
		} else {
			request.setAttribute("message",message);
	   		request.getRequestDispatcher("/WEB-INF/jsp/show/myindex.jsp").forward(request, response);
		}
   }
   
   @RequestMapping(value = "/updatepdw", method = RequestMethod.GET)
   public void upd(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
	   request.getRequestDispatcher("/WEB-INF/jsp/show/updatepassword.jsp").forward(request, response);
   }
   
	   @RequestMapping(value = "/updatepassword", method = RequestMethod.POST)
	   public void updatepassword(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		   String xinmima = request.getParameter("xinmima");
		   String mima = request.getParameter("mima");
		   String username = (String) session.getAttribute("username");
		   if (xinmima.equals(mima)) {
			System.out.println("username:::::::::::::::::::::::"+username);
			messageService.updatepassword(xinmima, username);
			System.out.println("用户密码更新成功！");
			response.sendRedirect(response.encodeRedirectURL("/message/myindex"));
		}else {
			request.getRequestDispatcher("/WEB-INF/jsp/show/updatepassword.jsp").forward(request, response);
		}
	}
   
	   @RequestMapping(value = "/updatemessage", method = RequestMethod.GET)
	   public void updateaddress(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		   request.getRequestDispatcher("/WEB-INF/jsp/show/updatemessage.jsp").forward(request, response);
	   }
	   
	   @RequestMapping(value = "/updatemessage", method = RequestMethod.POST)
	   public void updatemessage(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		   String username = (String)session.getAttribute("username");
		   String telphone = (String)request.getParameter("dianhua");
		   String address = request.getParameter("dizhi");
		   messageService.updatemessage(address, telphone, username);
		   response.sendRedirect(response.encodeRedirectURL("/message/myindex"));
	   }
	   
	   @RequestMapping(value = "/myorder", method = RequestMethod.GET)
	   public void myorder(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		   String username = (String) session.getAttribute("username");
		   
		   List<Order> list = orderService.findByUsername(username);
		   
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
		   
		   System.out.println("listsuperorder:::::::::::::::::::::::::::::"+listsuperorder);
		   
		   request.getRequestDispatcher("/WEB-INF/jsp/show/myorder.jsp").forward(request, response);
		   
	   }
	   
	   @RequestMapping(value = "/del",method = RequestMethod.GET)
		  public void del(@RequestParam("delid") String delid,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		   		order2Service.delByOrderid(delid);
		   		orderService.delByOrderid(delid);
		   		response.sendRedirect(response.encodeRedirectURL("/message/myorder"));
		  }
}
