package com.example.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entity.Message;
import com.example.demo.entity.User;
import com.example.demo.service.MessageService;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("/useradmin")
public class AdminUserController {
	
	@Autowired
	private MessageService messageService;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(HttpServletRequest request,HttpServletResponse response){
		List<Message> listmessages = messageService.findall();
		request.setAttribute("listmessages",listmessages);
        return "admin/user";
    }
	
	@RequestMapping(value = "/deluser",method = RequestMethod.GET)
    public void deluser(String username,HttpServletRequest request,HttpServletResponse response) throws IOException{
		messageService.delmessage(username);
		System.out.println("删除用户成功！");
		response.sendRedirect(response.encodeRedirectURL("/useradmin/index"));
    }
	
	@RequestMapping(value = "/updateuser",method = RequestMethod.GET)
    public String update(String username,HttpServletRequest request,HttpServletResponse response){
		Message message = messageService.findByUsername(username);
		request.setAttribute("message",message);
		System.out.println("message:::::::::::::::::::::::"+ message);
		return "/admin/userupdate";
    }
	
	
	@RequestMapping(value = "/updateuser",method = RequestMethod.POST)
    public void updatemessage(String name,HttpServletRequest request,HttpServletResponse response) throws IOException{
		String username = request.getParameter("userName");
		String password = request.getParameter("userpassword");
		String userphone = request.getParameter("userphone");
		String useraddress = request.getParameter("userAddress");
		messageService.updateall(username, password, useraddress, userphone, name);
		
		System.out.println("用户信息更新成功！");
		response.sendRedirect(response.encodeRedirectURL("/useradmin/index"));
    }
	
	@RequestMapping(value = "/adduser",method = RequestMethod.GET)
    public String adduser(){
        return "admin/adduser";
    }
	
	@RequestMapping(value = "/adduser",method = RequestMethod.POST)
    public void adduser1(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String username = request.getParameter("userName");
		String password = request.getParameter("userpassword");
		String userphone = request.getParameter("userphone");
		String useraddress = request.getParameter("userAddress");
		Message message = new Message();
		message.setAddress(useraddress);
		message.setPassword(password);
		message.setTelphone(userphone);
		message.setUsername(username);
		messageService.save(message);
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		userService.saveUser(user);
		
		System.out.println("添加用户成功！");
		response.sendRedirect(response.encodeRedirectURL("/useradmin/index"));
    }
	
	@RequestMapping(value = "/search",method = RequestMethod.POST)
    public String search(HttpServletRequest request,HttpServletResponse response){
		String search = request.getParameter("searchuser");
		List<Message> listmessages = messageService.findlikeusername(search);
		request.setAttribute("listmessages",listmessages);
        return "admin/user";
    }
}
