package com.example.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.admin.entity.AdminMessage;

@Service
public interface AdminMessageService {
	AdminMessage findByAdminusername(String username);
	
	List<AdminMessage> findAll();
	
	AdminMessage save(AdminMessage adminMessage);
	
	int updatemessage(String adminname,String password,String telphone,String address,String emain,String age,String sex,String name);
	
	int delmessage(String adminname);
	
	List<AdminMessage> findByAdminnameContaining(String adminusername);
}
