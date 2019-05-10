package com.example.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.admin.entity.AdminMessage;
import com.example.admin.repository.AdminMessageRepository;
import com.example.admin.service.AdminMessageService;

@Service
public class AdminMessageServiceImpl implements AdminMessageService {
	
	@Autowired
	private AdminMessageRepository adminMessageRepository;
	
	@Override
	public AdminMessage findByAdminusername(String username) {
		return adminMessageRepository.findByAdminname(username);
	}
	
	@Override
	public List<AdminMessage> findAll() {
		return adminMessageRepository.findAll();
	}
	
	@Override
	public AdminMessage save(AdminMessage adminMessage) {
		return adminMessageRepository.save(adminMessage);
	}
	
	@Override
	public int updatemessage(String adminname,String password,String telphone,String address,String emain,String age,String sex,String name) {
		return adminMessageRepository.updatename(adminname, password, telphone, address, emain, age, sex, name);
	}
	
	@Override
	public int delmessage(String adminname) {
		return adminMessageRepository.deladminname(adminname);
	}
	
	@Override
	public List<AdminMessage> findByAdminnameContaining(String adminusername){
		return adminMessageRepository.findByAdminnameContaining(adminusername);
	}
}
