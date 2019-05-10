package com.example.admin.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.admin.entity.AdminMessage;

@Repository
public interface AdminMessageRepository extends JpaRepository<AdminMessage,Integer> {
	
	AdminMessage findByAdminname(String username);
	
	@Transactional
	@Modifying
	@Query(value = "update adminmessage set adminname = ?1,password = ?2,telphone = ?3,address = ?4,emain = ?5,age = ?6,sex = ?7 where adminname = ?8",nativeQuery = true)
	int updatename(String adminname,String password,String telphone,String address,String emain,String age,String sex,String name);
	
	@Transactional
	@Modifying
	@Query(value = "delete from adminmessage where adminname = ?1",nativeQuery = true)
	int deladminname(String adminname);
	
	List<AdminMessage> findByAdminnameContaining(String adminusername);
	
}
