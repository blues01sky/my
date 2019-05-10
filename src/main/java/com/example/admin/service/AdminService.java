package com.example.admin.service;

import org.springframework.stereotype.Service;

import com.example.admin.entity.Admin;

@Service
public interface AdminService {
	
	int delbyadminname(String adminname);
	
	Admin findByAdminname(String adminname);
	
	Admin addAdmin(Admin admin);
	
	int updateAdmin(String adminname,String password,String name);
}
