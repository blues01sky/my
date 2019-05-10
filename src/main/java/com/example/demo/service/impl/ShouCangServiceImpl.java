package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.ShouCang;
import com.example.demo.repository.ShouCangRepository;
import com.example.demo.service.ShouCangService;

@Service
public class ShouCangServiceImpl implements ShouCangService {
	@Autowired
	private ShouCangRepository shouCangRepository;
	
	@Override
	public ShouCang baocun(ShouCang shouCang) {
		return shouCangRepository.save(shouCang);
	}
}
