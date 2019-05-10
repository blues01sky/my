package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "cart")
public class Cart {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) // MYSQL时可以这样使用自增
	private int id;
	private String goodsname;
	private String username;
	private int goodsnum;
	private double singleprice;
	private double sumprice;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	 * @return the goodsname
	 */
	public String getGoodsname() {
		return goodsname;
	}
	/**
	 * @param goodsname the goodsname to set
	 */
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the goodsnum
	 */
	public int getGoodsnum() {
		return goodsnum;
	}
	/**
	 * @param goodsnum the goodsnum to set
	 */
	public void setGoodsnum(int goodsnum) {
		this.goodsnum = goodsnum;
	}
	/**
	 * @return the singleprice
	 */
	public double getSingleprice() {
		return singleprice;
	}
	/**
	 * @param singleprice the singleprice to set
	 */
	public void setSingleprice(double singleprice) {
		this.singleprice = singleprice;
	}
	/**
	 * @return the sumprice
	 */
	public double getSumprice() {
		return sumprice;
	}
	/**
	 * @param sumprice the sumprice to set
	 */
	public void setSumprice(double sumprice) {
		this.sumprice = sumprice;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Cart [id=" + id + ", goodsname=" + goodsname + ", username=" + username
				+ ", goodsnum=" + goodsnum + ", singleprice=" + singleprice + ", sumprice=" + sumprice + "]";
	}
	
	
}
