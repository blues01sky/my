package com.example.demo.service;

import com.example.demo.entity.User;

public interface UserService {
	
	User findByUsernameAndPassword(String username,String password);
	
	User saveUser(User user);
	
	User findByUsername(String username);

}
