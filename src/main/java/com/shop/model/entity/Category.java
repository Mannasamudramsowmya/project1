package com.shop.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Category {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int categoryid;
	private String categoryname;
	private int categoryquantity;
	private String categorydescription;

	public Category() {
	}

	public Category(int categorycategoryid, String categoryname, int categoryquantity, String categorydescription) {
		super();
		this.categoryid = categorycategoryid;
		this.categoryname = categoryname;
		this.categoryquantity = categoryquantity;
		this.categorydescription = categorydescription;
	}

	public int getcategoryid() {
		return categoryid;
	}

	public void setcategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public int getCategoryquantity() {
		return categoryquantity;
	}

	public void setCategoryquantity(int categoryquantity) {
		this.categoryquantity = categoryquantity;
	}

	public String getCategorydescription() {
		return categorydescription;
	}

	public void setCategorydescription(String categorydescription) {
		this.categorydescription = categorydescription;
	}

}
