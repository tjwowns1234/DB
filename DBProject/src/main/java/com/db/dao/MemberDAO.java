package com.db.dao;

import java.util.List;

import com.db.dto.departmentsVO;



public interface MemberDAO {
	
	public List<departmentsVO> deptList() throws Exception;
}
