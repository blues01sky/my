package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.ShouCang;

public interface ShouCangService {
	
	ShouCang baocun(ShouCang shouCang);
	
	List<ShouCang> findusrename(String username);
	
	int delshangpin(String shangpinming);
}
