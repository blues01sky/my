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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
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
    
    
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String TestLogin(){
        return "show/login";
    }
    
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public void tuichu(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        
        HttpSession session = request.getSession();
		//session失效
		session.invalidate();
		
		response.sendRedirect(response.encodeRedirectURL("/index"));
    }
    
    @RequestMapping(value="/login",method = RequestMethod.POST)
    @ResponseBody
    public void login(HttpSession session,@RequestParam("username") String username,@RequestParam("password") String password,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    User user = new User();
    user = userService.findByUsernameAndPassword(username,password);
//    session = request.getSession();
    
    String isLogin = "";
     if(user==null) {
    	 isLogin = "登录失败";
    	 System.out.println(isLogin);
    	 response.sendRedirect(response.encodeRedirectURL("/user/login"));
  //  	 request.getRequestDispatcher("/WEB-INF/jsp/show/login.jsp").forward(request, response);
    	}else {
    		 isLogin = "登录成功";
    		 System.out.println(isLogin);
    		 session.setAttribute("username", username);
    		 session.setAttribute("isLogin", isLogin);
    		 response.sendRedirect(response.encodeRedirectURL("/index"));
//    		 request.setAttribute("username",username);
//    		 request.setAttribute("flag",flag);
//    		 request.setAttribute("isLogin", isLogin);
//        	 request.getRequestDispatcher("/WEB-INF/jsp/show/index.jsp").forward(request, response);
		}
	}
    
    @RequestMapping(value = "/regist",method = RequestMethod.GET)
    public String TestRegist(){
        return "show/regist";
    }
    
    @RequestMapping(value="/regist",method = RequestMethod.POST)
    @ResponseBody
    public void regist(@RequestParam("username") String username,@RequestParam("password") String password,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    	User user = new User();
     String isRegist="";
     User user1 = userService.findByUsername(username);
     if(user1!=null) {
    	 isRegist = "注册失败，用户已经存在！";
    	 System.out.println(isRegist);
//		request.setAttribute("user", user);
    	 request.getRequestDispatcher("/WEB-INF/jsp/show/regist.jsp").forward(request, response);
    	}else {
    		user.setUsername(username);
    		user.setPassword(password);
    		userService.saveUser(user);
    		isRegist = "注册成功";
    		System.out.println(isRegist);
    		request.setAttribute("isRegist", isRegist);
        	request.getRequestDispatcher("/WEB-INF/jsp/show/login.jsp").forward(request, response);
		}
	}
}
