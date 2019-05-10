package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
    @Autowired
    private UserRepository userRepository;

	@Override
	public User findByUsernameAndPassword(String username, String password) {
		// TODO Auto-generated method stub
		return userRepository.findByUsernameAndPassword(username,password);
	}
    
	@Override
    public User saveUser(User user) {
      return   userRepository.save(user);
    }
	
	@Override
	public User findByUsername(String username) {
		
			return userRepository.findByUsername(username);
	}

	
//    @Override
//    public User login(String username, String password) {
//        return userRepository.findByUsernameAndPassword(username,password);
//    }

}
