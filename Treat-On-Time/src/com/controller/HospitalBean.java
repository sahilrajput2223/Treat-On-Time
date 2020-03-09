package com.controller;

public class HospitalBean {

	private int h_id;
	private String name, street, city, area, state, country, bio, email, facilities;
	private long contact; 
	
	
	public int getH_id() {
		return h_id;
	}
	public String getName() {
		return name;
	}
	public String getStreet() {
		return street;
	}
	public String getCity() {
		return city;
	}
	public String getArea() {
		return area;
	}
	public String getState() {
		return state;
	}
	public String getCountry() {
		return country;
	}
	public String getBio() {
		return bio;
	}
	public String getEmail() {
		return email;
	}
	public String getFacilities() {
		return facilities;
	}
	public long getContact() {
		return contact;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	
}
