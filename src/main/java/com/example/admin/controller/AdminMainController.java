package com.example.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.admin.repository.AdminRepository;

@Controller
public class AdminMainController {
	
	@Autowired
	private AdminRepository adminRepository;
	
	@RequestMapping(value = "/adminindex",method = RequestMethod.GET)
    public String index(){
        return "admin/index";
    }
	
	@RequestMapping(value = "/adminuser1",method = RequestMethod.GET)
    public String user(){
        return "admin/user";
    }
	
	@RequestMapping(value = "/admingoods",method = RequestMethod.GET)
    public String goods(){
        return "admin/goods";
    }
	@RequestMapping(value = "/adminadmin",method = RequestMethod.GET)
    public String admin(){
        return "admin/admin";
    }
	@RequestMapping(value = "/admindingdan",method = RequestMethod.GET)
    public String dingdan(){
        return "admin/dingdanguanli";
    }
	
	@RequestMapping(value = "/adminlogin",method = RequestMethod.GET)
    public String loign(){
        return "admin/adminlogin";
    }
	


	
//	@RequestMapping(value = "/cart",method = RequestMethod.GET)
//	@ResponseBody
//	public void findbyusername(HttpSession session,String username,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
//		
//		List<Cart> findcartresults = new ArrayList<Cart>();
//		
//		username  = (String) session.getAttribute("username");
//		if (username == null) {
//			request.getRequestDispatcher("/WEB-INF/jsp/show/regist.jsp").forward(request, response);
//		}
//		findcartresults = cartService.cartFindByUsername(username);
//		
//		double number = 0;
//		
//		for (Cart cart : findcartresults) {
//			number = number + cart.getSingleprice() * cart.getGoodsnum();
//		}
//		
//		System.out.println("number::::::::::::::::::::::::::::::::"+number);
//		
//		request.setAttribute("findcartresults",findcartresults);
//		
//		session.setAttribute("number",number);
//		
//		request.getRequestDispatcher("/WEB-INF/jsp/show/cart.jsp").forward(request, response);
//		
//	}
//	
//	@RequestMapping(value = "/cart1",method = RequestMethod.POST)
//	@ResponseBody
//	public void addtocart(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
//		
//		Integer goodsnum = Integer.parseInt(request.getParameter("shuliang"));
//		String goodsname = String.valueOf(request.getParameter("shangpinming"));
//		double singleprice = Double.parseDouble(request.getParameter("danjia"));
//		double sumprice = goodsnum * singleprice;
//		
//		String username1 = (String) session.getAttribute("username");
//		
//		cartService.addcart(goodsname, goodsnum, singleprice, sumprice, username1);
//		
//		System.out.println("添加购物车数据成功！");
//		
//		response.sendRedirect(response.encodeRedirectURL("/cart1/cart"));
//	}

//		

	
}
