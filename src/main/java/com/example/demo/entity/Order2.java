package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order2")
public class Order2 {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) // MYSQL时可以这样使用自增
	private int id;
	private String orderid;
	private String goodsname;
	private int goodsnum;
	private double singleprice;

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Order2 [id=" + id + ", orderid=" + orderid + ", goodsname=" + goodsname + ", goodsnum=" + goodsnum
				+ ", singleprice=" + singleprice + "]";
	}
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
	 * @return the orderid
	 */
	public String getOrderid() {
		return orderid;
	}
	/**
	 * @param orderid the orderid to set
	 */
	public void setOrderid(String orderid) {
		this.orderid = orderid;
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
	
}
