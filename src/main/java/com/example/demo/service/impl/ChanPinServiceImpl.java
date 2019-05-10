package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.ChanPin;
import com.example.demo.repository.ChanPinRepository;
import com.example.demo.service.ChanPinService;

@Service
public class ChanPinServiceImpl implements ChanPinService {
	
	@Autowired
	private ChanPinRepository chanPinRepository;
	
	
	@Override
	public ChanPin findByShangPinMing(String shangpinming) {
		return chanPinRepository.findByShangpinming(shangpinming);
	}
	
	 @Override
	    public List<ChanPin> chanpinList() {
	        return chanPinRepository.findAll();
	    }
	 
	 @Override
	    public List<ChanPin> chanpinlistlike(String shangpinming) {
	        return chanPinRepository.findByShangpinmingContaining(shangpinming);
	    }
	
	 @Override
	    public List<ChanPin> fenleilist(String fenlei) {
	        return chanPinRepository.findByFenlei(fenlei);
	    }
	 
	 @Override
	    public List<ChanPin> fenyelist(Integer start,Integer count) {
	        return chanPinRepository.findByFenYe(start, count);
	    }
	 
	 @Override
	    public ChanPin findById(int id) {
	        return chanPinRepository.findById(id);
	    }

	@Override
	public ChanPin baocun(ChanPin chanPin) {
		return chanPinRepository.save(chanPin);
	}

	@Override
	public int delgoods(String shangpinming) {
		return chanPinRepository.delgoods(shangpinming);
	}

	@Override
	public int updategoods(String shangpinming, String jiage, String youhui, String fenlei, String img, int kucunliang,
			double jinjia, String goodsname) {
		return chanPinRepository.updategoods(shangpinming, jiage, youhui, fenlei, img, kucunliang, jinjia, goodsname);
	}
}
