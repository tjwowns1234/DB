package com.db.dto;

public class doctorVO {
	
    private String d_id;
    private String d_name;
    private String d_office_number;
    private String d_major;

	private String regcount;
    private String count;
    
    public String getD_major() {
		return d_major;
	}
	public void setD_major(String d_major) {
		this.d_major = d_major;
	}
    public String getRegcount() {
		return regcount;
	}
	public void setRegcount(int regcount) {
		this.regcount = String.valueOf(regcount);
	}
	
	public String getD_id() {
		return d_id;
	}
	public void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_office_number() {
		return d_office_number;
	}
	public void setD_office_number(String d_office_number) {
		this.d_office_number = d_office_number;
	}
	public String getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = String.valueOf(count);
	}
	
	
	
}
