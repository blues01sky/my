package com.example.demo.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "dingdan")
public class Order {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) // MYSQL时可以这样使用自增
	private int id;
	private String orderid;
	private String username;
	private String address;
	private String telphone;
	private String zhuangtai;
	@Temporal(TemporalType.TIMESTAMP)  
	  @Column(updatable = false)  
	  @org.hibernate.annotations.CreationTimestamp   
	  private Date creatime;   
	  @Column(name="uodatetime")  
	  @org.hibernate.annotations.UpdateTimestamp  
	  @Temporal(TemporalType.TIMESTAMP)  
	  private Date uodatetime;
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
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the telphone
	 */
	public String getTelphone() {
		return telphone;
	}
	/**
	 * @param telphone the telphone to set
	 */
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	/**
	 * @return the zhuangtai
	 */
	public String getZhuangtai() {
		return zhuangtai;
	}
	/**
	 * @param zhuangtai the zhuangtai to set
	 */
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	/**
	 * @return the creatime
	 */
	public Date getCreatime() {
		return creatime;
	}
	/**
	 * @param creatime the creatime to set
	 */
	public void setCreatime(Date creatime) {
		this.creatime = creatime;
	}
	/**
	 * @return the uodatetime
	 */
	public Date getUodatetime() {
		return uodatetime;
	}
	/**
	 * @param uodatetime the uodatetime to set
	 */
	public void setUodatetime(Date uodatetime) {
		this.uodatetime = uodatetime;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Order [id=" + id + ", orderid=" + orderid + ", username=" + username + ", address=" + address
				+ ", telphone=" + telphone + ", zhuangtai=" + zhuangtai + ", creatime=" + creatime + ", uodatetime="
				+ uodatetime + "]";
	}
	  
	  
	  
}
