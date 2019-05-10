package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Message;
import com.example.demo.repository.MessageRepository;
import com.example.demo.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageRepository messageRepository;
	
	@Override
	public int addmessage(String username,String telphone,String address) {
		return messageRepository.addmessage(username, address, telphone);
	}
	
	@Override
	public Message findByUsername(String username){
		return messageRepository.findByUsername(username);
	}
	
	@Override
	public int updatepassword(String password,String username) {
		return messageRepository.updatepassword(password, username);
	}
	
	@Override
	public int updatemessage(String address,String telphone,String username) {
		return messageRepository.updatemessage(address, telphone, username);
	}
	
	@Override
	public int updataname(String newusername,String oldusername) {
		return messageRepository.updatename(newusername,oldusername);
	}
	
	@Override
	public List<Message> findall(){
		return messageRepository.findAll();
	}

	@Override
	public int updateall(String username,String password,String address,String telphone,String name) {
		return messageRepository.updateall(username, password, address, telphone, name);
	}
	
	@Override
	public int delmessage(String username) {
		return messageRepository.delmessage(username);
	}
	
	@Override
	public Message save(Message message) {
		return messageRepository.save(message);
	}
	
	@Override
	public List<Message> findlikeusername(String username){
		return messageRepository.findByUsernameContaining(username);
	}
}
