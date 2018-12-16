package com.db.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

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

	@Override
	public doctorVO getDoctorInfo(doctorVO dvo) throws Exception {
		return sqlSession.selectOne(Namespace+".dselect",dvo);
	}

	@Override
	public List<birthVO> ListDoctorBirth(int type) throws Exception {
		if(type == 1)
		{
			return sqlSession.selectList(Namespace + ".dYes");
		}
		else if (type == 2)
		{
			return sqlSession.selectList(Namespace + ".dToday");
		}
		else if (type == 3 )
		{
			return sqlSession.selectList(Namespace + ".dTomor");
		}
		else	return null;
	}

	@Override
	public List<doctorVO> getDoctorList() throws Exception {
		return sqlSession.selectList(Namespace + ".dinfo");
	}

	@Override
	public int reginsert(patientVO pvo) throws Exception {
		System.out.println(pvo.getD_id());
		System.out.println(pvo.getD_office_number());

		try{
		sqlSession.insert(Namespace+".reginsert",pvo);	
		String temp = sqlSession.selectOne(Namespace+".t1",pvo); //rrn 으로 pid받아와야함
		pvo.setP_id(temp);
		System.out.println("가져온 p아이디 : "+pvo.getP_id());
		int a= pvo.getP_id();
		temp = sqlSession.selectOne(Namespace+".t2",pvo); // 닥터아이디로 오피스넘버 받아와야함
		pvo.setD_office_number(temp);
		System.out.println("가져온 오피스넘버 : "+pvo.getD_office_number());
		
		sqlSession.insert(Namespace+".reginsert2",pvo); // p_id랑 닥터오피스넘버 넣어줘야함
		
		temp = sqlSession.selectOne(Namespace+".t3",pvo); // 닥터아이디로 오피스넘버 받아와야함
		pvo.setR_id(temp);
		System.out.println("가져온 r_id : "+pvo.getR_id());
		
		pvo.setP_id(String.valueOf(a));
		sqlSession.insert(Namespace+".reginsert3",pvo);
		}
		catch(Exception e){
			return 0;
		}

		return 1;
		
	}

	@Override
	public List<register_infoVO> getrlist() throws Exception {
		return sqlSession.selectList(Namespace + ".rlist");
	}

	@Override
	public int a() throws Exception {
		goparse();
		return 1;
	}

	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}
	
	public void goparse() throws Exception{
		int page = 1;	// 페이지 초기값 
		try{
			while(true){
				// parsing할 url 지정(API 키 포함해서)
				String url = "http://apis.data.go.kr/1470000/DURPrdlstInfoService/getDurPrdlstInfoList?ServiceKey=qPUeylXSuPEW%2FxnbaLM%2B0eidJnhUzQzP0buF3mo4KMqUnPU5xymGfFRr363N5Ep0PHiTb6gP5ftw%2Ft4BON6T%2BQ%3D%3D&numOfRows=100&pageNo="+page;
				String durl ="http://apis.data.go.kr/B551182/diseaseInfoService/getDissNameCodeList?numOfRows=11789&ServiceKey=qPUeylXSuPEW%2FxnbaLM%2B0eidJnhUzQzP0buF3mo4KMqUnPU5xymGfFRr363N5Ep0PHiTb6gP5ftw%2Ft4BON6T%2BQ%3D%3D";
				DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
				Document doc = dBuilder.parse(url);
				
				// root tag 
				doc.getDocumentElement().normalize();
				System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
				
				// 파싱할 tag
				NodeList nList = doc.getElementsByTagName("item");
				//System.out.println("파싱할 리스트 수 : "+ nList.getLength());
				mediVO divo = new mediVO();
				for(int temp = 0; temp < nList.getLength(); temp++){
					Node nNode = nList.item(temp);
					if(nNode.getNodeType() == Node.ELEMENT_NODE){
						
						Element eElement = (Element) nNode;
						System.out.println("============="+"No : "+ temp +"=============");
						//System.out.println(eElement.getTextContent());
						System.out.println(getTagValue("ITEM_SEQ", eElement));
						System.out.println(getTagValue("ITEM_NAME", eElement));
						System.out.println(getTagValue("EDI_CODE", eElement));
						divo.setM_id(String.valueOf(getTagValue("ITEM_SEQ", eElement)));
						divo.setM_name(String.valueOf(getTagValue("ITEM_NAME", eElement)));
						divo.setM_inurance_code(String.valueOf(getTagValue("EDI_CODE", eElement)));
						sqlSession.insert(Namespace+".a",divo);
						System.out.println("인서트 카운트 : "+temp);
					}	// for end
				}	// if end
				page += 1;
				System.out.println("page number : "+page);
				if(page > 293){	
					break;
				}
			}	// while end
			
		} catch (Exception e){	
			e.printStackTrace();
		}	// try~catch end
	}	// main end

	@Override
	public clinicVO getclinicinfo(clinicVO cvo) throws Exception {
		System.out.println("4-1");
		String a = sqlSession.selectOne(Namespace + ".c1",cvo);
		System.out.println("4-2");
		System.out.println(a);
		System.out.println("4-3");
		cvo.setD_office_number(a);
		System.out.println("4-4");
		List<clinicVO> b = new ArrayList<clinicVO>();
		System.out.println("4-5");
		b = sqlSession.selectList(Namespace + ".getclinicinfo",cvo);
		System.out.println("4-6");
		if ( b.isEmpty() || b == null) return null;
		else return b.get(0);
	}

	@Override
	public int clinic1(clinic1VO c1vo) throws Exception {
		System.out.println(c1vo.getC_d_details());
		System.out.println(c1vo.getC_opinion());
		System.out.println(c1vo.getR_id());
		return sqlSession.update(Namespace + ".clinic1",c1vo);
	}

	@Override
	public List<diseVO> dsearch(dsearchVO mvo) throws Exception {
		return sqlSession.selectList(Namespace + ".dsearch",mvo);
	}

	@Override
	public int dinsert(diseVO mvo) throws Exception {
		System.out.println("dinsert dao진입");
		System.out.println(mvo.getDi_id());
		System.out.println(mvo.getDi_name());
		System.out.println(mvo.getR_id());
		return sqlSession.update(Namespace + ".dinsert",mvo);
	}

	@Override
	public List<mediVO> medisearch(dsearchVO mvo) throws Exception {
		return sqlSession.selectList(Namespace + ".medisearch",mvo);
	}

	@Override
	public int inprescription(List<mediVO> mvo,mediVO m1) throws Exception {
		sqlSession.insert(Namespace + ".inpr",m1);
		for(int i = 0 ; i < mvo.size() ; i++)
			sqlSession.insert(Namespace + ".inprescription",mvo.get(i));
		sqlSession.delete(Namespace + ".a1",m1);
		sqlSession.delete(Namespace + ".a2",m1);
		return 1;
	}

	@Override
	public List<register_infoVO> doclist(String a) throws Exception{
		return sqlSession.selectList(Namespace + ".rlist2",a);
	}

	@Override
	public List<presVO> plist(String b) throws Exception {
		return sqlSession.selectList(Namespace + ".plist",b);
	}
	
	
	
}
