package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.ConnectUs;
import com.example.demo.repository.ConnectUsRespository;
import com.example.demo.service.ConnectUsService;

@Service
public class ConnectUsServiceImpl implements ConnectUsService {
	
	@Autowired
	private ConnectUsRespository connectUsRespository;
	
	@Override
    public ConnectUs saveConnectUs(ConnectUs connectUs) {
      return   connectUsRespository.save(connectUs);
    }
	
}
