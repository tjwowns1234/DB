package com.db.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.db.dao.MemberDAO;
import com.db.dto.loginVO;

import etc.REPriceVO;
import etc.departmentsVO;
import etc.real_estateVO;
import etc.real_estate_categoryVO;


@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	

	@Override
	public List<departmentsVO> deptList() throws Exception {
		return dao.deptList();
	}

	@Override
	public List<real_estateVO> hwselect() throws Exception{
		return dao.hwselect();
	}

	@Override
	public int hwinsert(real_estate_categoryVO vo) throws Exception {
		return dao.hwinsert(vo);
	}

	@Override
	public List<real_estate_categoryVO> hwinsselect() throws Exception {
		return dao.hwinsselect();
	}

	@Override
	public loginVO login(loginVO loginvo, int type) throws Exception {
		System.out.println("다오에서 리턴되서 오는 값 : " + dao.login(loginvo, type));
		return dao.login(loginvo, type);
	}
}
