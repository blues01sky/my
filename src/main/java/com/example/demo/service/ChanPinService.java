package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.ChanPin;

public interface ChanPinService {
	ChanPin findByShangPinMing(String shangpinming);
	
	ChanPin findById(int id);
	
	List<ChanPin> chanpinList();
	
	List<ChanPin> chanpinlistlike(String shangpinming);
	
	List<ChanPin> fenleilist(String feilei);
	
	List<ChanPin> fenyelist(Integer start,Integer count);
	
	ChanPin baocun(ChanPin chanPin);
	
	int delgoods(String shangpinming);
	
	int updategoods(String shangpinming,String jiage,String youhui,String fenlei,String img,int kucunliang,double jinjia,String goodsname);
}
