package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.ShouCang;

@Repository
public interface ShouCangRepository extends JpaRepository<ShouCang,Integer> {
	
	List<ShouCang> findByUsername(String username);
	
	@Transactional
	@Query(value = "delete from shoucang where shangpinming = ?1", nativeQuery = true)
	@Modifying
	int delshangpinming(String shangpinming);
}
