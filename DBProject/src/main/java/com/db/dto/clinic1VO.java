package com.db.dto;

public class clinic1VO {

	private String c_d_details;
	private String c_opinion;
	private String r_id;
	
	public int getR_id() {
		return Integer.parseInt(r_id);
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getC_d_details() {
		return c_d_details;
	}
	public void setC_d_details(String c_d_details) {
		this.c_d_details = c_d_details;
	}
	public String getC_opinion() {
		return c_opinion;
	}
	public void setC_opinion(String c_opinion) {
		this.c_opinion = c_opinion;
	}




	
	

	
	
}
