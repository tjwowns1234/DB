package com.db.dto;

public class clinicVO {

	private String p_name;
	private String p_id;
	private String d_name;
	private String r_time;
	private String d_id;
	private String d_office_number;
	private String c_details;
	private String r_id;
	
	
	
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getC_details() {
		return c_details;
	}
	public void setC_details(String c_details) {
		this.c_details = c_details;
	}
	public String getD_office_number() {
		return d_office_number;
	}
	public void setD_office_number(String d_office_number) {
		this.d_office_number = d_office_number;
	}
	public int getD_id() {
		return Integer.parseInt(d_id);
	}
	public void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_id() {
		return Integer.parseInt(p_id);
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getR_time() {
		return r_time;
	}
	public void setR_time(String r_time) {
		this.r_time = r_time;
	}
	
	
	
}
