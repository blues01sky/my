package com.example.admin.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;


@Entity
@Table(name = "adminmessage",uniqueConstraints = {@UniqueConstraint(columnNames="adminname")} )
@EntityListeners(AuditingEntityListener.class)
public class AdminMessage {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) // MYSQL时可以这样使用自增
	private int id;
	private String adminname;
	private String password;
	private String telphone;
	private String address;
	private String emain;
	private String age;
	private String sex;
	
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
	 * @return the adminname
	 */
	public String getAdminname() {
		return adminname;
	}
	/**
	 * @param adminname the adminname to set
	 */
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
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
	 * @return the emain
	 */
	public String getEmain() {
		return emain;
	}
	/**
	 * @param emain the emain to set
	 */
	public void setEmain(String emain) {
		this.emain = emain;
	}
	/**
	 * @return the age
	 */
	public String getAge() {
		return age;
	}
	/**
	 * @param age the age to set
	 */
	public void setAge(String age) {
		this.age = age;
	}
	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}
	/**
	 * @param sex the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
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
		return "AdminMessage [id=" + id + ", adminname=" + adminname + ", password=" + password + ", telphone="
				+ telphone + ", address=" + address + ", emain=" + emain + ", age=" + age + ", sex=" + sex
				+ ", creatime=" + creatime + ", uodatetime=" + uodatetime + "]";
	}
	
}
