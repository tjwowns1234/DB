package com.db.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.db.dto.loginVO;

import etc.REPriceVO;
import etc.departmentsVO;
import etc.real_estateVO;
import etc.real_estate_categoryVO;



@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.db.mapper.memberMapper";
	
	@Override
	public List<departmentsVO> deptList() throws Exception {
		return sqlSession.selectList(Namespace+".deptList");
	}
	
	public List<real_estateVO> hwselect() throws Exception {
		return sqlSession.selectList(Namespace+".hwselect");
	}

	@Override
	public int hwinsert(real_estate_categoryVO vo) throws Exception {
		System.out.println(vo.getTYPE_ID() + " " + vo.getTYPE_NAME());
		return sqlSession.insert(Namespace+".hwinsert",vo);
	}

	@Override
	public List<real_estate_categoryVO> hwinsselect() throws Exception {
		return sqlSession.selectList(Namespace+".hwinsselect");
	}

	@Override
	public loginVO login(loginVO loginvo, int type) throws Exception {
		System.out.println(loginvo.getType()+ loginvo.getD_id() + loginvo.getD_password());
		loginVO vo=null;
		if (type == 1)
			return sqlSession.selectOne(Namespace+".login1", loginvo);
		else if(type == 2){
			System.out.println("login2 진입함");
			vo = sqlSession.selectOne(Namespace+".login2", loginvo);
			System.out.println(vo.getD_id());
			return vo;
		}
		else return null;
	}

}
