package com.db.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.db.dao.MemberDAO;
import com.db.dto.birthVO;
import com.db.dto.clinic1VO;
import com.db.dto.clinicVO;
import com.db.dto.diseVO;
import com.db.dto.doctorVO;
import com.db.dto.loginVO;
import com.db.dto.mediVO;
import com.db.dto.dsearchVO;
import com.db.dto.patientVO;
import com.db.dto.presVO;
import com.db.dto.register_infoVO;

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

	@Override
	public doctorVO getDoctorInfo(doctorVO dvo) throws Exception {
		return dao.getDoctorInfo(dvo);
	}

	@Override
	public List<birthVO> ListDoctorBirth(int type) throws Exception {
		return dao.ListDoctorBirth(type);
	}

	@Override
	public List<doctorVO> getDoctorList() throws Exception {
		return dao.getDoctorList();
	}

	@Override
	public int reginsert(patientVO pvo) throws Exception {
		return dao.reginsert(pvo);
	}

	@Override
	public List<register_infoVO> getrlist() throws Exception {
		return dao.getrlist();
	}

	@Override
	public int a() throws Exception {
		return dao.a();
	}

	@Override
	public clinicVO getclinicinfo(clinicVO cvo) throws Exception {
		return dao.getclinicinfo(cvo);
	}

	@Override
	public int clinic1(clinic1VO c1vo) throws Exception {
		return dao.clinic1(c1vo);
	}

	@Override
	public List<diseVO> dsearch(dsearchVO mvo) throws Exception {
		return dao.dsearch(mvo);
	}

	@Override
	public int dinsert(diseVO mvo) throws Exception {
		return dao.dinsert(mvo);
	}

	@Override
	public List<mediVO> medisearch(dsearchVO mvo) throws Exception {
		return dao.medisearch(mvo);
	}

	@Override
	public int inprescription(List<mediVO> mvo,mediVO m1) throws Exception {
		return dao.inprescription(mvo,m1);
	}

	@Override
	public List<register_infoVO> doclist(String a) throws Exception{
		return dao.doclist(a);
	}

	@Override
	public List<presVO> plist(String b) throws Exception {
		return dao.plist(b);
	}
}
