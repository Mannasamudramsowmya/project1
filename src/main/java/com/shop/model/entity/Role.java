package com.shop.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Role {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int roleid;
	@OneToOne
	@JoinColumn(name = "id")
	private Register id_fk;
	private String userrole;

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public Register getId_fk() {
		return id_fk;
	}

	public void setId_fk(Register id_fk) {
		this.id_fk = id_fk;
	}

	public String getUserrole() {
		return userrole;
	}

	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}
}
