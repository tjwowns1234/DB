package com.db.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.db.dao.MemberDAO;
import com.db.dto.departmentsVO;


@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	

	@Override
	public List<departmentsVO> deptList() throws Exception {
		return dao.deptList();
	}

}
