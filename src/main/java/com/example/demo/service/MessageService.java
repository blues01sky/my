package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.entity.Message;

@Service
public interface MessageService {
	Message addmessage(Message message);
	
	Message findByUsername(String username);
	
	int updataname(String newusername,String oldusername);
	
	int updatepassword(String password,String username);
	
	int updatemessage(String address,String telphone,String username);
	
	List<Message> findall();
	
	int updateall(String username,String password,String address,String telphone,String name);
	
	int delmessage(String username);
	
	Message save(Message message);
	
	List<Message> findlikeusername(String username);
}
