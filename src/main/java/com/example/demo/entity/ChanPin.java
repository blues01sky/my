package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "chanpin")
public class ChanPin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // MYSQL时可以这样使用自增
    private int id;
    private String shangpinming;
    private String jiage;
    private String youhui;
    private String fenlei;
    private String img;
    private int kucunliang;
	private double jinjia;
	
	
    /* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ChanPin [id=" + id + ", shangpinming=" + shangpinming + ", jiage=" + jiage + ", youhui=" + youhui
				+ ", fenlei=" + fenlei + ", img=" + img + ", kucunliang=" + kucunliang + ", jinjia=" + jinjia + "]";
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
	 * @return the fenlei
	 */
	public String getFenlei() {
		return fenlei;
	}
	/**
	 * @param fenlei the fenlei to set
	 */
	public void setFenlei(String fenlei) {
		this.fenlei = fenlei;
	}
	/**
	 * @return the img
	 */
	public String getImg() {
		return img;
	}
	/**
	 * @param img the img to set
	 */
	public void setImg(String img) {
		this.img = img;
	}
	/**
	 * @return the kucunliang
	 */
	public int getKucunliang() {
		return kucunliang;
	}
	/**
	 * @param kucunliang the kucunliang to set
	 */
	public void setKucunliang(int kucunliang) {
		this.kucunliang = kucunliang;
	}
	/**
	 * @return the jinjia
	 */
	public double getJinjia() {
		return jinjia;
	}
	/**
	 * @param jinjia the jinjia to set
	 */
	public void setJinjia(double jinjia) {
		this.jinjia = jinjia;
	}
	

}
