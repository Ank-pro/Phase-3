package com.example.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ShoeFactory {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name="Name")
	private String shoeName;
	@Column(name="Category")
	private String shoeCategory;
	@Column(name="Price")
	private int shoePrice;
	
	public ShoeFactory() {}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShoeName() {
		return shoeName;
	}
	public void setShoeName(String shoeName) {
		this.shoeName = shoeName;
	}
	public String getShoeCategory() {
		return shoeCategory;
	}
	public void setShoeCategory(String shoeCategory) {
		this.shoeCategory = shoeCategory;
	}
	public int getShoePrice() {
		return shoePrice;
	}
	public void setShoePrice(int shoePrice) {
		this.shoePrice = shoePrice;
	}
	@Override
	public String toString() {
		return "ShoeFactory [id=" + id + ", shoeName=" + shoeName + ", shoeCategory=" + shoeCategory + ", shoePrice="
				+ shoePrice + "]";
	}
	

}
