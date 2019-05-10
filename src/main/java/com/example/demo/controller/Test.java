package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.repository.CartRepository;
import com.example.demo.util.FileUtil;

@Controller
public class Test {
	
	@Autowired
	private CartRepository cartRepository;
	
	@RequestMapping(value = "/test",method = RequestMethod.GET)
    public String TestLogin(){
        return "show/test";
    }
	
	 @RequestMapping(value = "/test1",method = RequestMethod.POST)
	 public @ResponseBody String uploadImg(@RequestParam("picadress") MultipartFile file) {
	        String fileName = file.getOriginalFilename();
	        String shujukulufilename = "images/"+fileName;
	        System.out.println("shujukulufilename::::::::::::::::::::::::::::::::"+shujukulufilename);
	        /*System.out.println("fileName-->" + fileName);
	        System.out.println("getContentType-->" + contentType);*/
	        String filePath = "F:/My/fianl/src/main/resources/static/images/";
	        System.out.println("filePath::::::::::::::::::::::::::::::::::::::::::::::"+filePath);
	        try {
	            FileUtil.uploadFile(file.getBytes(), filePath, fileName);
	        } catch (Exception e) {
	        }
	        //返回json
	        return "uploadimg success";
	    }

}
