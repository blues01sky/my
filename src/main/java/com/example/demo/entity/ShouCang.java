package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shoucang")
public class ShouCang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // MYSQL时可以这样使用自增
    private int id;
    private String shangpinming;
    private String jiage;
    private String youhui;
    private String username;
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
	 * @return the shangpinming
	 */
	public String getShangpinming() {
		return shangpinming;
	}
	/**
	 * @param shangpinming the shangpinming to set
	 */
	public void setShangpinming(String shangpinming) {
		this.shangpinming = shangpinming;
	}
	/**
	 * @return the jiage
	 */
	public String getJiage() {
		return jiage;
	}
	/**
	 * @param jiage the jiage to set
	 */
	public void setJiage(String jiage) {
		this.jiage = jiage;
	}
	/**
	 * @return the youhui
	 */
	public String getYouhui() {
		return youhui;
	}
	/**
	 * @param youhui the youhui to set
	 */
	public void setYouhui(String youhui) {
		this.youhui = youhui;
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ShouCang [id=" + id + ", shangpinming=" + shangpinming + ", jiage=" + jiage + ", youhui=" + youhui
				+ ", username=" + username + "]";
	}
	
}
