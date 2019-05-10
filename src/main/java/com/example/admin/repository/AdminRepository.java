package com.example.admin.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.admin.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin,Integer> {
	
	@Transactional
	@Modifying
	@Query(value = "delete from admin where adminname = ?1",nativeQuery = true)
	int deladminname(String adminname);
	
	Admin findByAdminname(String adminname);
	
	@Transactional
	@Modifying
	@Query(value = "update admin set adminname = ?1,password = ?2 where adminname = ?3",nativeQuery = true)
	int updatename(String adminname,String password,String name);

	
}
