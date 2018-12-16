package com.db.dao;

import java.util.List;

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



public interface MemberDAO {
	
	public List<departmentsVO> deptList() throws Exception;
	public List<real_estateVO> hwselect() throws Exception;
	public int hwinsert(real_estate_categoryVO vo) throws Exception;
	public List<real_estate_categoryVO> hwinsselect() throws Exception;
	
	public loginVO login(loginVO loginvo, int type) throws Exception;
	public doctorVO getDoctorInfo(doctorVO dvo) throws Exception;
	public List<birthVO> ListDoctorBirth(int type) throws Exception;
	public List<doctorVO> getDoctorList() throws Exception;
	public int reginsert(patientVO pvo) throws Exception;
	public List<register_infoVO> getrlist() throws Exception;
	public int a() throws Exception;
	public clinicVO getclinicinfo(clinicVO cvo) throws Exception;
	public int clinic1(clinic1VO c1vo) throws Exception;
	public List<diseVO> dsearch(dsearchVO mvo) throws Exception;
	public int dinsert(diseVO mvo) throws Exception;
	public List<mediVO> medisearch(dsearchVO mvo) throws Exception;
	public int inprescription(List<mediVO> mvo,mediVO m1) throws Exception;
	public List<register_infoVO> doclist(String a) throws Exception;
	public List<presVO> plist(String b) throws Exception;
}
