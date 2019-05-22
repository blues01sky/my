package com.example.admin.controller;

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

import com.example.admin.entity.Admin;
import com.example.admin.entity.AdminMessage;
import com.example.admin.service.AdminMessageService;
import com.example.admin.service.AdminService;

@Controller
@RequestMapping("/adminuser")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminMessageService adminMessageService;
	
	@RequestMapping(value = "/admin",method = RequestMethod.GET)
    public void index(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		List<AdminMessage> adminMessages = adminMessageService.findAll();
		
		request.setAttribute("adminMessages",adminMessages);
		request.getRequestDispatcher("/WEB-INF/jsp/admin/admin.jsp").forward(request, response);
    }
	
	@RequestMapping(value = "/search",method = RequestMethod.POST)
    public void search(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String adminusername = request.getParameter("searchuser");
		List<AdminMessage> adminMessages = adminMessageService.findByAdminnameContaining(adminusername);
		System.out.println("搜索成功！");
		request.setAttribute("adminMessages",adminMessages);
		request.getRequestDispatcher("/WEB-INF/jsp/admin/admin.jsp").forward(request, response);
    }
	
	@RequestMapping(value = "/addadminuser",method = RequestMethod.GET)
    public String adminuser(HttpServletRequest request,HttpServletResponse response){
        return "admin/addadmin";
    }
	
	@RequestMapping(value = "/deladmin",method = RequestMethod.GET)
    public void deladmin(HttpSession session,String adminname,HttpServletResponse response,HttpServletRequest request) throws IOException{
		adminService.delbyadminname(adminname);
		adminMessageService.delmessage(adminname);
		System.out.println("删除管理员信息成功|！");
		response.sendRedirect(response.encodeRedirectURL("/adminuser/admin"));
    }
	
	@RequestMapping(value = "/adminupdate",method = RequestMethod.POST)
    public void admite(String name,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String adminname = request.getParameter("adminname");
		String adminpassword = request.getParameter("adminpassword");
		String sex = request.getParameter("adminsex");
		String adminage = request.getParameter("adminage");
		String adminemail = request.getParameter("adminemail");
		String adminphone = request.getParameter("adminphone");
		String adminAddress = request.getParameter("adminAddress");
		System.out.println("name:::::::::::::::::::"+name);
		adminMessageService.updatemessage(adminname, adminpassword, adminphone, adminAddress, adminemail, adminage, sex, name);
		adminService.updateAdmin(adminname, adminpassword, name);
		System.out.println("管理员信息更新成功！");
		response.sendRedirect(response.encodeRedirectURL("/adminuser/admin"));
    }
	
	@RequestMapping(value = "/adminupdate",method = RequestMethod.GET)
    public void adminupdate(String name,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		AdminMessage message = adminMessageService.findByAdminusername(name);
		request.setAttribute("message",message);
		request.getRequestDispatcher("/WEB-INF/jsp/admin/adminupdate.jsp").forward(request, response);
    }
	
	
	@RequestMapping(value = "/addadminuser",method = RequestMethod.POST)
    public void addadminmessage(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		String adminname = request.getParameter("adminname");
		String adminpassword = request.getParameter("adminpassword");
		String sex = request.getParameter("sex");
		String adminage = request.getParameter("adminage");
		String adminemail = request.getParameter("adminemail");
		String adminphone = request.getParameter("adminphone");
		String adminAddress = request.getParameter("adminAddress");
		AdminMessage adminMessage = new AdminMessage();
		adminMessage.setAdminname(adminname);
		adminMessage.setAddress(adminAddress);
		adminMessage.setAge(adminage);
		adminMessage.setEmain(adminemail);
		adminMessage.setPassword(adminpassword);
		adminMessage.setSex(sex);
		adminMessage.setTelphone(adminphone);
		adminMessageService.save(adminMessage);
		
		Admin admin = new Admin();
		admin.setAdminname(adminname);
		admin.setPassword(adminpassword);
		adminService.addAdmin(admin);
		System.out.println("添加管理员成功！");
		response.sendRedirect(response.encodeRedirectURL("/adminuser/admin"));
    }
	
	@RequestMapping(value = "/login",method = RequestMethod.POST)
    public String adminuserlogin(HttpSession session,HttpServletRequest request,HttpServletResponse response){
		
		String adminname= request.getParameter("adminname");
		String password= request.getParameter("password");
		Admin admin = adminService.findByAdminname(adminname);
		System.out.println("admin::::::::::::::::::::::"+admin);
		if (password.equals(admin.getPassword())) {
			session.setAttribute("adminname", adminname);
			System.out.println("管理员登录成功！");
			return "admin/index";
		}
        return "admin/adminlogin";
    }
	
	 @RequestMapping(value = "/logout",method = RequestMethod.GET)
	    public void tuichu(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
	        
	        HttpSession session = request.getSession();
			//session失效
			session.invalidate();
			
			response.sendRedirect(response.encodeRedirectURL("/"));
	    }

}
