package com.example.demo.entity;

import javax.persistence.*;

@Entity
@Table(name = "connectus")
public class ConnectUs {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) // MYSQL时可以这样使用自增
	private int id;
	private String contactname;
	private String contactemail;
	private String contactsubject;
	private String contactmessage;
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
	 * @return the contactname
	 */
	public String getContactname() {
		return contactname;
	}
	/**
	 * @param contactname the contactname to set
	 */
	public void setContactname(String contactname) {
		this.contactname = contactname;
	}
	/**
	 * @return the contactemail
	 */
	public String getContactemail() {
		return contactemail;
	}
	/**
	 * @param contactemail the contactemail to set
	 */
	public void setContactemail(String contactemail) {
		this.contactemail = contactemail;
	}
	/**
	 * @return the contactsubject
	 */
	public String getContactsubject() {
		return contactsubject;
	}
	/**
	 * @param contactsubject the contactsubject to set
	 */
	public void setContactsubject(String contactsubject) {
		this.contactsubject = contactsubject;
	}
	/**
	 * @return the contactmessage
	 */
	public String getContactmessage() {
		return contactmessage;
	}
	/**
	 * @param contactmessage the contactmessage to set
	 */
	public void setContactmessage(String contactmessage) {
		this.contactmessage = contactmessage;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ConnectUs [id=" + id + ", contactname=" + contactname + ", contactemail=" + contactemail
				+ ", contactsubject=" + contactsubject + ", contactmessage=" + contactmessage + "]";
	}
	
}
