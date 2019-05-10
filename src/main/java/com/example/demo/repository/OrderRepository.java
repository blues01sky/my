package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order,Integer> {
	List<Order> findByUsername(String username);
	
	@Transactional
	@Modifying
	@Query(value = "delete from dingdan where orderid = ?1",nativeQuery = true)
	int delByorderid(String orderid);
	
	@Transactional
	@Modifying
	@Query(value = "update dingdan set zhuangtai = ?1 where orderid = ?2",nativeQuery = true)
	int updatezhuangtai(String zhuangtai,String orderid);
	
	Order findByOrderid(String orderid);
	
	List<Order> findByUsernameContaining(String username);
}
