package com.example.demo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.entity.ConnectUs;
import com.example.demo.service.ConnectUsService;

	@Controller
	public class ConnectUsController {
	    
		@Autowired
	    private ConnectUsService connectUsService;
	    
//	    @RequestMapping(value = "/Doctor/index", method = RequestMethod.GET)
//	    public void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//
//	        request.setAttribute("realName", "吕昊昕");
//	        request.getRequestDispatcher("/index.jsp").forward(request, response);
//	    }
	//    
	    
	    
//	    @RequestMapping(value = "/que/index", method = {RequestMethod.GET, RequestMethod.POST})
//	    public String index(){
//	        return "forward:/jsp/que/quezhuye.jsp";
//	    }
	    
		@RequestMapping(value="/connectus",method = RequestMethod.POST)
	    @ResponseBody
	    public void regist(@RequestParam("contactname") String contactname,@RequestParam("contactemail") String contactemail,@RequestParam("contactsubject") String contactsubject,@RequestParam("contactmessage") String contactmessage,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
			ConnectUs connectUs = new ConnectUs();
			ConnectUs connectUsback = new ConnectUs();
			connectUs.setContactname(contactname);
			connectUs.setContactemail(contactemail);
			connectUs.setContactsubject(contactsubject);
			connectUs.setContactmessage(contactmessage);
			
			//如果插入成功，那么save的方法返回值中会有id的值
			connectUsback = connectUsService.saveConnectUs(connectUs);
			
			response.sendRedirect(response.encodeRedirectURL("/index"));
			
			}
}
