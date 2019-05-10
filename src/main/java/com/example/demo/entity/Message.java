package com.example.demo.entity;

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
@Table(name = "message",uniqueConstraints = {@UniqueConstraint(columnNames="username")})
@EntityListeners(AuditingEntityListener.class)
public class Message {
	
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY) // MYSQL时可以这样使用自增
	    private int id;
	    private String username;
	    private String password;
	    private String address;
	    private String telphone;
	    @Temporal(TemporalType.TIMESTAMP)  
		  @Column(updatable = false)  
		  @org.hibernate.annotations.CreationTimestamp   
		  private Date creatime;   
		  @Column(name="updatetime")  
		  @org.hibernate.annotations.UpdateTimestamp  
		  @Temporal(TemporalType.TIMESTAMP)  
		  private Date updatetime;
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
		 * @return the updatetime
		 */
		public Date getUpdatetime() {
			return updatetime;
		}
		/**
		 * @param updatetime the updatetime to set
		 */
		public void setUpdatetime(Date updatetime) {
			this.updatetime = updatetime;
		}
		/* (non-Javadoc)
		 * @see java.lang.Object#toString()
		 */
		@Override
		public String toString() {
			return "Message [id=" + id + ", username=" + username + ", password=" + password + ", address=" + address
					+ ", telphone=" + telphone + ", creatime=" + creatime + ", updatetime=" + updatetime + "]";
		}
		  
}
