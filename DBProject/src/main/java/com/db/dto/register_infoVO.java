package com.db.dto;

public class register_infoVO {
	
    private String r_id;
    private String r_time;
    private String p_name;
    private String d_office_number;
    
    
	public String getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = String.valueOf(r_id);
	}
	public String getR_time() {
		return r_time;
	}
	public void setR_time(String r_time) {
		this.r_time = r_time;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getD_office_number() {
		return d_office_number;
	}
	public void setD_office_number(String d_office_number) {
		this.d_office_number = d_office_number;
	}
    
    
	
	
}
