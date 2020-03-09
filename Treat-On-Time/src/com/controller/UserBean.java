package com.controller;

public class UserBean {

	private int id;
	private String username, email, password, c_password, password_reset;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getC_password() {
		return c_password;
	}
	public void setC_password(String c_password) {
		this.c_password = c_password;
	}
	public String getPassword_reset() {
		return password_reset;
	}
	public void setPassword_reset(String password_rest) {
		this.password_reset = password_rest;
	}
}
