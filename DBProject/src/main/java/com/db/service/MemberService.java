package com.db.service;

import java.util.List;

import com.db.dto.loginVO;

import etc.REPriceVO;
import etc.departmentsVO;
import etc.real_estateVO;
import etc.real_estate_categoryVO;



public interface MemberService {
	
	public List<departmentsVO> deptList() throws Exception;
	public List<real_estateVO> hwselect() throws Exception;
	public int hwinsert(real_estate_categoryVO vo) throws Exception;
	public List<real_estate_categoryVO> hwinsselect() throws Exception;
	
	public loginVO login(loginVO loginvo, int type) throws Exception;
}
