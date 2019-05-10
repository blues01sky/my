package com.example.admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.admin.entity.Admin;
import com.example.admin.repository.AdminRepository;
import com.example.admin.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	@Override
	public int delbyadminname(String adminname) {
		return adminRepository.deladminname(adminname);
	}
	
	@Override
	public Admin findByAdminname(String adminname) {
		return adminRepository.findByAdminname(adminname);
	}
	
	@Override
	public Admin addAdmin(Admin admin) {
		return adminRepository.save(admin);
	}
	
	@Override
	public int updateAdmin(String adminname,String password,String name) {
		return adminRepository.updatename(adminname, password, name);
	}
}
