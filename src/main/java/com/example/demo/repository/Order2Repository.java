package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.ChanPin;
import com.example.demo.entity.Order2;

@Repository
public interface Order2Repository extends JpaRepository<Order2,Integer> {
	List<Order2> findByOrderid(String orderid);
	
	@Transactional
	@Modifying
	@Query(value = "delete from order2 where orderid = ?1",nativeQuery = true)
	int delByorderid(String orderid);

}
