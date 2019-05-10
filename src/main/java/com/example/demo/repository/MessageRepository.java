package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.ChanPin;
import com.example.demo.entity.Message;

@Repository
public interface MessageRepository extends JpaRepository<Message,Integer> {
	Message findByUsername(String username);
	
	@Transactional
	@Modifying
	@Query(value = "update message set username = ?1 where username = ?2",nativeQuery = true)
	int updatename(String newusername,String oldusername);
	
	@Transactional
	@Modifying
	@Query(value = "insert into message(username,address,telphone) values (?1,?2,?3)",nativeQuery = true)
	int addmessage(String username,String address,String telphone);
	
	@Transactional
	@Modifying
	@Query(value = "update user set password = ?1 where username = ?2",nativeQuery = true)
	int updatepassword(String password,String username);
	
	
	@Transactional
	@Modifying
	@Query(value = "update message set address = ?1,telphone = ?2 where username = ?3",nativeQuery = true)
	int updatemessage(String address,String telphone,String username);
	
	@Transactional
	@Modifying
	@Query(value = "update message set username = ?1,password = ?2,address = ?3,telphone = ?4 where username = ?5",nativeQuery = true)
	int updateall(String username,String password,String address,String telphone,String name);
	
	@Transactional
	@Modifying
	@Query(value = "delete from message where username = ?1",nativeQuery = true)
	int delmessage(String username);
	
	List<Message> findByUsernameContaining(String username);
	
}
