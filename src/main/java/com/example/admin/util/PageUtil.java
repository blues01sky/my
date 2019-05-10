package com.example.admin.util;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.entity.ChanPin;
import com.example.demo.service.ChanPinService;

public class PageUtil {
	
	@Autowired
	private ChanPinService chanPinService;
	
	public void fenyechaxun(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		   
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
	       request.getRequestDispatcher("/WEB-INF/jsp/show/index.jsp").forward(request, response);

	}
}
