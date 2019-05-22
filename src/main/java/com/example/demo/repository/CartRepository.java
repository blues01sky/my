package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart,Integer> {
	List<Cart> findByUsername(String username);

	Cart findById(int id);
	
	@Transactional
	@Modifying
	@Query(value = "update cart set goodsnum = ?1,sumprice = ?2 where id = ?3",nativeQuery = true)
	int updatanum(Integer goodsnum,Double sumprice, Integer id);
	
	@Transactional
	@Modifying
	@Query(value = "delete from cart where id = ?1",nativeQuery = true)
	int delById(Integer id);
	
	@Transactional
	@Modifying
	@Query(value = "delete from cart where username = ?1",nativeQuery = true)
	int delByusername(String username);
	
	@Transactional
	@Modifying
	@Query(value = "insert into cart(goodsname,goodsnum,singleprice,sumprice,username) values(?1,?2,?3,?4,?5)",nativeQuery = true)
	int addcart(String goodsname,Integer goodsnum,double singleprice,double sumprice,String username);
}
