package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.ChanPin;

@Repository
public interface ChanPinRepository extends JpaRepository<ChanPin,Integer> {
	
	ChanPin findByShangpinming(String shangpinming);
	
	ChanPin findById(int id);
	
	List<ChanPin> findByFenlei(String fenlei);
	
	List<ChanPin> findAll();
	
	List<ChanPin> findByShangpinmingContaining(String shangpinming);
	
	@Query(value = "select * from chanpin limit ?1,?2", nativeQuery = true)
	@Modifying
	List<ChanPin> findByFenYe(Integer start, Integer count);
	
	@Transactional
	@Query(value = "delete from chanpin where shangpinming = ?1", nativeQuery = true)
	@Modifying
	int delgoods(String shangpinming);
	
	@Transactional
	@Modifying
	@Query(value = "update chanpin set shangpinming = ?1,jiage = ?2,youhui = ?3,fenlei = ?4,img = ?5,kucunliang = ?6,jinjia = ?7 where shangpinming = ?8",nativeQuery = true)
	int updategoods(String shangpinming,String jiage,String youhui,String fenlei,String img,int kucunliang,double jinjia,String goodsname);
	
//	@Modifying update和delete用这个标签
//    @Query("select count(*) from chanpin")
	
}
