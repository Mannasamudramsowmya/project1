package com.shop.model.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
@Entity
public class Cart {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String cartid;
	private String date;
	private double grandtotal;
	private String quantity;
	private String time;
	
	public Cart() {
	}
	
	@ManyToOne
	@JoinColumn(name= "productid")
	private Product id_fk;
	
    @OneToMany(mappedBy ="cart",cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Cartitems> cartItems;
    
	@OneToOne
    @JoinColumn(name = "mailid")
	private Register id_fk1;

	public String getCartid() {
		return cartid;
	}

	public void setCartid(String cartid) {
		this.cartid = cartid;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public double getGrandtotal() {
		return grandtotal;
	}

	public void setGrandtotal(double grandtotal) {
		this.grandtotal = grandtotal;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Product getId_fk() {
		return id_fk;
	}

	public void setId_fk(Product id_fk) {
		this.id_fk = id_fk;
	}

	public Register getId_fk1() {
		return id_fk1;
	}

	public void setId_fk1(Register id_fk1) {
		this.id_fk1 = id_fk1;
	}


}
