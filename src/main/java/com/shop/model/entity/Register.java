package com.shop.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Register {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int id;
	@NotEmpty(message = "Invalid Name")
	private String name;
	@NotEmpty(message = " Enter Mail ID")   
	private String mailid;
	@NotEmpty(message = "Please Enter Password")
	private String password;
	@NotEmpty(message = "Enter Confirm-Password")
	private String confirmpassword;
	private Boolean enabled;

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Register() {
	}

	public Register(int id, String name, String mailid, String password, String confirmpassword) {
		this.id = id;
		this.name = name;
		this.mailid = mailid;
		this.password = password;
		this.confirmpassword = confirmpassword;

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMailid() {
		return mailid;
	}

	public void setMailid(String mailid) {
		this.mailid = mailid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

}
