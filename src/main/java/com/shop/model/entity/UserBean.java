package com.shop.model.entity;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class UserBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8265148996889093557L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private String userId;
	private String email;
	private Integer age;
	
	

	public UserBean() {
	}

	public UserBean(String userId, String email, Integer age) {
		this.userId = userId;
		this.email = email;
		this.age = age;
		
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
