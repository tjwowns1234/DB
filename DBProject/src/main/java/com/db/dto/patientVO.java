package com.db.dto;

public class patientVO {
	
    private String p_id;
    private String p_name;
    private String p_rrn;
    private String p_gender;
    private String p_phone_number;
    private String c_details;
    private String d_office_number;
    private String d_id;
    private String r_id;
    
    
	public int getR_id() {
		return Integer.parseInt(r_id);
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public int getD_id() {
		return Integer.parseInt(d_id);
	}
	public void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public String getD_office_number() {
		return d_office_number;
	}
	public void setD_office_number(String d_office_number) {
		this.d_office_number = d_office_number;
	}
	public String getC_details() {
		return c_details;
	}
	public void setC_details(String c_details) {
		this.c_details = c_details;
	}
	public int getP_id() {
		return Integer.parseInt(p_id);
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_rrn() {
		return p_rrn;
	}
	public void setP_rrn(String p_rrn) {
		this.p_rrn = p_rrn;
	}
	public String getP_gender() {
		return p_gender;
	}
	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
	}
	public String getP_phone_number() {
		return p_phone_number;
	}
	public void setP_phone_number(String p_phone_number) {
		this.p_phone_number = p_phone_number;
	}
    
	
	
	
}
