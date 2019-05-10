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
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.ChanPin;
import com.example.demo.entity.ShouCang;
import com.example.demo.service.ChanPinService;
import com.example.demo.service.ShouCangService;

@Controller
@RequestMapping("/chanpin")
public class ChanPinController {
	
    @Autowired
    private ChanPinService chanPinService;
    @Autowired
    private ShouCangService shouCangService;
    /*@RequestMapping(value = "/list",method = RequestMethod.GET)
    public List<ChanPin> ListChanPin(){
    	List<ChanPin> goods = chanPinService.chanpinList();
        return goods;
    }*/
    
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public void chanpinlist(HttpSession session, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        List<ChanPin> SearchResults = chanPinService.chanpinList();
        String username = (String) session.getAttribute("username");
        System.out.println("username::::::::::::::::::::::::"+username);
        request.setAttribute("SearchResults",SearchResults);
        request.setAttribute("username",username);
        request.getRequestDispatcher("/WEB-INF/jsp/show/index.jsp").forward(request, response);
    }
    
    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String TestLogin(){
        return "show/goods";
    }
  
  @RequestMapping(value = "/search",method = RequestMethod.POST)
    public int likelist(@RequestParam("shangpinming") String shangpinming,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        
    	List<ChanPin> SearchResults = chanPinService.chanpinlistlike(shangpinming);
    	
        request.setAttribute("SearchResults",SearchResults);
        
        request.getRequestDispatcher("/WEB-INF/jsp/show/goods.jsp").forward(request, response);
        
        return 1;
  } 
  
  
  @RequestMapping(value="/leixing",method = RequestMethod.GET)
  public void fenleilist(@RequestParam("fenlei") String fenlei,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
	  
	  List<ChanPin> SearchResults = chanPinService.fenleilist(fenlei);
	  
      request.setAttribute("SearchResults",SearchResults);
      
      request.getRequestDispatcher("/WEB-INF/jsp/show/goods.jsp").forward(request, response);
 
}
  
  //获取数据库中记录的总数
	  @RequestMapping(value = "/fenye",method = RequestMethod.GET)
	  public void fenyelist(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
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
	  
	  @RequestMapping(value="/detail",method = RequestMethod.GET)
	  public void goodsdetail(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		  String shangpinming = request.getParameter("shangpinming");
		  
		  ChanPin chanPin = chanPinService.findByShangPinMing(shangpinming);
		  int kucun = chanPin.getKucunliang();
		  request.setAttribute("chanPin",chanPin);
		  request.setAttribute("kucun",kucun);
		  request.getRequestDispatcher("/WEB-INF/jsp/show/detail.jsp").forward(request, response);
	  }
	  

}
