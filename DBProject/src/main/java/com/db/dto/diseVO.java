package com.db.dto;

public class diseVO {

	private String di_id;
	private String di_name;
	private String r_id;
	
	
	
	public int getR_id() {
		return Integer.parseInt(r_id);
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getDi_id() {
		return di_id;
	}
	public void setDi_id(String di_id) {
		this.di_id = di_id;
	}
	public String getDi_name() {
		return di_name;
	}
	public void setDi_name(String di_name) {
		this.di_name = di_name;
	}

	


	
	

	
	
}
