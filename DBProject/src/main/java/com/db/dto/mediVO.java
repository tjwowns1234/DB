package com.db.dto;

public class mediVO {

	private String m_id;
	private String m_name;
	private String m_inurance_code;
	private String r_id;
	
	public int getR_id() {
		return Integer.parseInt(r_id);
	}
	
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_inurance_code() {
		return m_inurance_code;
	}
	public void setM_inurance_code(String m_inurance_code) {
		this.m_inurance_code = m_inurance_code;
	}

	

	


	
	

	
	
}
