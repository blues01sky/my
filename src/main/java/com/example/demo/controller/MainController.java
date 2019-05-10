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

import com.example.demo.entity.ChanPin;
import com.example.demo.entity.ShouCang;
import com.example.demo.service.ChanPinService;
import com.example.demo.service.ShouCangService;

@Controller
public class MainController {
	
	@Autowired
	private ChanPinService chanPinService;
	@Autowired
	private ShouCangService shouCangService;
	
	 @RequestMapping(value = "/index",method = RequestMethod.GET)
	    public void chanpinlist(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		 	List<ChanPin> SearchResults = chanPinService.chanpinList();
	        String username = (String) session.getAttribute("username");
	        System.out.println("username::::::::::::::::::::::::"+username);
	        List<ShouCang> listchanpins = shouCangService.findusrename(username);
	        request.setAttribute("listchanpins",listchanpins);
	        request.setAttribute("SearchResults",SearchResults);
	        request.setAttribute("username",username);
	        request.getRequestDispatcher("/WEB-INF/jsp/show/index.jsp").forward(request, response);
	    }
	
	@RequestMapping(value = "/about",method = RequestMethod.GET)
    public String about(){
        return "show/about";
    }
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
    public String hello(){
        return "hello";
    }
//	@RequestMapping(value = "/myindex",method = RequestMethod.GET)
//    public void myindex(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
//		response.sendRedirect(response.encodeRedirectURL("/message/myindex"));
//    }
	
	@RequestMapping(value = "/goods",method = RequestMethod.GET)
    public void goods(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		 int start = 0;
		  int count = 8;
		  try {
	            start = Integer.parseInt(request.getParameter("start"));
	        } catch (NumberFormatException e) {
	            // 当浏览器没有传参数start时
	        }
	       int next = start + count;
	       int pre = start - count;
	       int total = chanPinService.chanpinList().size();
	       System.out.println("一共有"+total+"条数据");
	       int last;
	       if (0 == total % count)
	           last = total - count;
	       else
	           last = total - total % count;
	       pre = pre < 0 ? 0 : pre;
	       next = next > last ? last : next;
	       request.setAttribute("next", next);
	       request.setAttribute("pre", pre);
	       request.setAttribute("last", last);
	       List<ChanPin> SearchResults = chanPinService.fenyelist(start, count);
	       System.out.println("SearchResults:"+SearchResults);
	       request.setAttribute("SearchResults", SearchResults);
	       request.getRequestDispatcher("/WEB-INF/jsp/show/goods.jsp").forward(request, response);
    }
	
	@RequestMapping(value = "/connect",method = RequestMethod.GET)
    public String contact(){
        return "show/contact-us";
    }
	
	@RequestMapping(value = "/checkout",method = RequestMethod.GET)
    public String checkout(){
        return "show/checkout";
    }
	
	@RequestMapping(value = "/cart",method = RequestMethod.GET)
    public String cart(){
        return "show/cart";
    }
	
}
