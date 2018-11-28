package com.db.service;

import java.util.List;

import com.db.dto.departmentsVO;



public interface MemberService {
	
	public List<departmentsVO> deptList() throws Exception;
}
