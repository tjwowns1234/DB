package com.db.dto;

public class loginVO {

	int d_id;
	String d_password;
	String type;
	int n_id;
	String n_password;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getD_id() {
		return d_id;
	}
	public void setD_id(String d_id) {
		this.d_id = Integer.parseInt(d_id);
	}
	public String getD_password() {
		return d_password;
	}
	public void setD_password(String d_password) {
		this.d_password = d_password;
	}
	public int getN_id() {
		return n_id;
	}
	public void setN_id(String n_id) {
		this.n_id = Integer.parseInt(n_id);
	}
	public String getN_password() {
		return n_password;
	}
	public void setN_password(String n_password) {
		this.n_password = n_password;
	}
	

	
	
}
