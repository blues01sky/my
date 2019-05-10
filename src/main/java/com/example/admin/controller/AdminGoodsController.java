package com.example.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.entity.ChanPin;
import com.example.demo.service.ChanPinService;
import com.example.demo.util.FileUtil;

@Controller
@RequestMapping("/goodsadmin")
public class AdminGoodsController {
	
	@Autowired
	private ChanPinService chanPinService;
	
	@RequestMapping( value = "/index",method = RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response) {
		List<ChanPin> listchanpins = chanPinService.chanpinList();
		request.setAttribute("listchanpins",listchanpins);
		return "/admin/goods";
	}
	
	@RequestMapping( value = "/search",method = RequestMethod.POST)
	public String searchgoods(HttpServletRequest request,HttpServletResponse response) {
		String shangpinming = request.getParameter("searchgoods");
		List<ChanPin> listchanpins = chanPinService.chanpinlistlike(shangpinming);
		request.setAttribute("listchanpins",listchanpins);
		return "/admin/goods";
	}
	
	@RequestMapping( value = "/updategoods",method = RequestMethod.GET)
	public String updatepage(String shangpinming,HttpServletRequest request,HttpServletResponse response) {
		ChanPin chanpin = chanPinService.findByShangPinMing(shangpinming);
		request.setAttribute("chanpin",chanpin);
		return "/admin/goodsupdate";
	}
	
	@RequestMapping(value = "/updategoods",method = RequestMethod.POST)
	 public @ResponseBody void updategoods(@RequestParam("picadress") MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws IOException {
	        String fileName = file.getOriginalFilename();
	        String shujukulufilename = "images/"+fileName;
	        String filePath = "F:/My/fianl/src/main/resources/static/images/";
	        try {
	            FileUtil.uploadFile(file.getBytes(), filePath, fileName);
	        } catch (Exception e) {
	        }
	        
	        String shangpinming = request.getParameter("goodsname");
	        double jinjia = Double.parseDouble(request.getParameter("jinjia"));
	        String jiage = request.getParameter("jiage");
	        String youhui = request.getParameter("youhui");
	        String fenlei = request.getParameter("fenlei");
	        String img = shujukulufilename;
	        int kucunliang = Integer.parseInt(request.getParameter("kucunliang"));
	        ChanPin chanPin = new ChanPin();
	        chanPin.setFenlei(fenlei);
	        chanPin.setImg(img);
	        chanPin.setJiage(jiage);
	        chanPin.setJinjia(jinjia);
	        chanPin.setKucunliang(kucunliang);
	        chanPin.setShangpinming(shangpinming);
	        chanPin.setYouhui(youhui);
	        chanPinService.updategoods(shangpinming, jiage, youhui, fenlei, img, kucunliang, jinjia, shangpinming);
	        
	        response.sendRedirect(response.encodeRedirectURL("/goodsadmin/index"));
	    }
	
	@RequestMapping(value = "/delgoods",method = RequestMethod.GET)
    public void deluser(String shangpinming,HttpServletRequest request,HttpServletResponse response) throws IOException{
		chanPinService.delgoods(shangpinming);
		System.out.println("删除用户成功！");
		response.sendRedirect(response.encodeRedirectURL("/goodsadmin/index"));
    }
	
	@RequestMapping(value = "/goodsadd",method = RequestMethod.GET)
	public String addgoods() {
		return "/admin/goodsadd";
	}
	
	@RequestMapping(value = "/goodsadd",method = RequestMethod.POST)
	 public @ResponseBody void uploadImg(@RequestParam("picadress") MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws IOException {
	        String fileName = file.getOriginalFilename();
	        String shujukulufilename = "images/"+fileName;
	        String filePath = "F:/My/fianl/src/main/resources/static/images/";
	        try {
	            FileUtil.uploadFile(file.getBytes(), filePath, fileName);
	        } catch (Exception e) {
	        }
	        
	        String shangpinming = request.getParameter("goodsname");
	        double jinjia = Double.parseDouble(request.getParameter("jinjia"));
	        String jiage = request.getParameter("jiage");
	        String youhui = request.getParameter("youhui");
	        String fenlei = request.getParameter("fenlei");
	        String img = shujukulufilename;
	        int kucunliang = Integer.parseInt(request.getParameter("kucunliang"));
	        ChanPin chanPin = new ChanPin();
	        chanPin.setFenlei(fenlei);
	        chanPin.setImg(img);
	        chanPin.setJiage(jiage);
	        chanPin.setJinjia(jinjia);
	        chanPin.setKucunliang(kucunliang);
	        chanPin.setShangpinming(shangpinming);
	        chanPin.setYouhui(youhui);
	        chanPinService.baocun(chanPin);
	        
	        response.sendRedirect(response.encodeRedirectURL("/goodsadmin/index"));
	    }
	
}
