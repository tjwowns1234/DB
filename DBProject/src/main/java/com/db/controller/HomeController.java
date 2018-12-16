package com.db.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
import com.db.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	private MemberService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private doctorVO dvo = new doctorVO();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +"Login.jsp");
		mv.setViewName("login");
		return mv;
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(Locale local, ModelAndView mv
			,HttpServletRequest request) throws Exception {
		logger.info(local +"logout.jsp");
		HttpSession session = request.getSession();
		session.invalidate();
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView dlogin(Locale local, ModelAndView mv
			,@ModelAttribute("loginVO") loginVO loginvo
			,HttpServletRequest request) throws Exception {
		
		loginVO check = null;
		int type = Integer.parseInt(loginvo.getType());
		logger.info(local +"login.do");
		if (type==1)
			check = service.login(loginvo, 1);
		else if (type==2) 
			{
				System.out.println("로그인 2번 진입");
				
				check = service.login(loginvo, 2);
			}
		else{}
		
		if(check==null){
			logger.info("로그인 실패");
			mv.setViewName("login");
		}
		else if(check != null){
			dvo.setD_id(String.valueOf(loginvo.getD_id()));
			dvo = service.getDoctorInfo(dvo);
			mv.addObject("abc","추가한 내용 딱 하나임");
			mv.setViewName("main");
			logger.info("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("id", request.getParameter( "d_id" ));
			session.setAttribute("type", request.getParameter( "type" ));
			session.setAttribute("d_name", dvo.getD_name());
			session.setAttribute("d_office_number", dvo.getD_office_number());
			session.setAttribute("regcount", dvo.getRegcount());
			session.setAttribute("count", dvo.getCount());
			session.setAttribute("did", dvo.getD_id());
			session.setMaxInactiveInterval(60*60);
			
            Calendar cal = Calendar.getInstance();
            int mon = cal.get(Calendar.MONTH);
        
            mv.addObject("mon",(mon+1)%13);
            
            List<birthVO> dbirth1 = service.ListDoctorBirth(1);
            List<birthVO> dbirth2 = service.ListDoctorBirth(2);
            List<birthVO> dbirth3 = service.ListDoctorBirth(3);
            birthVO tempb = new birthVO();
            tempb.setD_name(" - ");
            if (dbirth1.isEmpty()) { 
            	dbirth1.add(tempb);
            	mv.addObject("Dbirth1",dbirth1);
            }
            else mv.addObject("Dbirth1",dbirth1);
            
            if (dbirth2.isEmpty()) { 
            	dbirth2.add(tempb);
            	mv.addObject("Dbirth2",dbirth2);
            }
            else mv.addObject("Dbirth2",dbirth2);
            
            if (dbirth3.isEmpty()) { 
            	dbirth3.add(tempb);
            	mv.addObject("Dbirth3",dbirth3);
            }
            else mv.addObject("Dbirth3",dbirth3);
        }
		System.out.println(check);
		return mv;
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(Locale local, ModelAndView mv
			,HttpServletRequest request) throws Exception {
		logger.info(local +"main.jsp");
		
		doctorVO dvo1 = new doctorVO();
		
		HttpSession session = request.getSession();
		dvo1.setD_id((String)session.getAttribute("id"));
		doctorVO dvo = service.getDoctorInfo(dvo1);
		session.setAttribute("regcount", dvo.getRegcount());
		session.setAttribute("count", dvo.getCount());
		
        Calendar cal = Calendar.getInstance();
        int mon = cal.get(Calendar.MONTH);
    
        mv.addObject("mon",(mon+1)%13);
        
        List<birthVO> dbirth1 = service.ListDoctorBirth(1);
        List<birthVO> dbirth2 = service.ListDoctorBirth(2);
        List<birthVO> dbirth3 = service.ListDoctorBirth(3);
        birthVO tempb = new birthVO();
        tempb.setD_name(" - ");
        if (dbirth1.isEmpty()) { 
        	dbirth1.add(tempb);
        	mv.addObject("Dbirth1",dbirth1);
        }
        else mv.addObject("Dbirth1",dbirth1);
        
        if (dbirth2.isEmpty()) { 
        	dbirth2.add(tempb);
        	mv.addObject("Dbirth2",dbirth2);
        }
        else mv.addObject("Dbirth2",dbirth2);
        
        if (dbirth3.isEmpty()) { 
        	dbirth3.add(tempb);
        	mv.addObject("Dbirth3",dbirth3);
        }
        else mv.addObject("Dbirth3",dbirth3);
		mv.setViewName("main");
		
		
		
		
		return mv;
	}
	
	@RequestMapping(value = "/doctor", method = RequestMethod.GET)
	public ModelAndView doctor(Locale local, ModelAndView mv,
			HttpServletRequest request) throws Exception {
		logger.info(local +"doctor.jsp");
		
		HttpSession session = request.getSession();
		String a = (String) session.getAttribute("d_office_number");
		String b = (String) session.getAttribute("id");
		System.out.println(a);System.out.println("d_id : "+b);
		List<doctorVO> dvo = service.getDoctorList();
		mv.addObject("dvo",dvo);

		List<register_infoVO> rlist = service.doclist(a);
		mv.addObject("list",rlist);
		
		List<presVO> plist1 = service.plist(b);
		System.out.println(plist1);
		System.out.println(plist1.size());
		mv.addObject("plist",plist1);
		mv.setViewName("doctor");
		return mv;
	}
	
	@RequestMapping(value = "/clinic", method = RequestMethod.GET)
	public ModelAndView clinic(Locale local, ModelAndView mv
			,HttpServletRequest request) throws Exception {
		logger.info(local +"clinic.jsp");
		System.out.println(1);
		clinicVO cvo = new clinicVO();
		System.out.println(2);
		HttpSession session = request.getSession();
		System.out.println(3);
		cvo.setD_id((String)session.getAttribute("id"));
		System.out.println(4);
		cvo = service.getclinicinfo(cvo);
		System.out.println(5);
		if(cvo == null) mv.setViewName("doctor");
		else
		{
			System.out.println(6);
		mv.addObject("p_name",cvo.getP_name());
		mv.addObject("p_id",cvo.getP_id());
		mv.addObject("d_name",cvo.getD_name());
		mv.addObject("r_time",cvo.getR_time());
		mv.addObject("c_details",cvo.getC_details());
		mv.addObject("r_id",cvo.getR_id());
		
		
		mv.setViewName("clinic");
		}
		return mv;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +"register.jsp");
		
		List<doctorVO> dvo = service.getDoctorList();
		mv.addObject("dvo",dvo);
		
		List<register_infoVO> rlist = service.getrlist();
		mv.addObject("rlist",rlist);
		
		mv.setViewName("register");
		return mv;
	}
	
	@RequestMapping(value = "/hospitalization", method = RequestMethod.GET)
	public ModelAndView hospitalization(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +"hospitalization.jsp");
		mv.setViewName("hospitalization");
		return mv;
	}
	
	@RequestMapping(value = "/inpatient_info", method = RequestMethod.GET)
	public ModelAndView inpatient_info(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +"inpatient_info.jsp");
		mv.setViewName("inpatient_info");
		return mv;
	}
	
	@RequestMapping(value = "/regview", method = RequestMethod.GET)
	public ModelAndView regview(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +"regview.jsp");
		mv.setViewName("regview");
		return mv;
	}
	
	
	@RequestMapping(value = "/reginsert", method = RequestMethod.POST)
	public ModelAndView reginsert(Locale local, ModelAndView mv
			,@ModelAttribute("patientVO") patientVO pvo) throws Exception {
		logger.info(local +"reginsert행위");
		service.reginsert(pvo);
		List<doctorVO> dvo = service.getDoctorList();
		mv.addObject("dvo",dvo);

		List<register_infoVO> rlist = service.getrlist();
		mv.addObject("rlist",rlist);

		mv.setViewName("register");
		return mv;
	}
	@RequestMapping(value = "/register_table", method = RequestMethod.GET)
	   public ModelAndView register_table(Locale local, ModelAndView mv) throws Exception {
	      logger.info(local +"register_table.jsp");
	      
	      List<register_infoVO> rlist = service.getrlist();
	      mv.setViewName("register_table");
	      mv.addObject("rlist",rlist);
	      return mv;
	   }
	
	@RequestMapping(value = "/clinic1", method = RequestMethod.POST)
	   public ModelAndView clinic1(Locale local, ModelAndView mv
			   ,@ModelAttribute("clinic1VO") clinic1VO c1vo) throws Exception {
	      logger.info(local +"clinic1.jsp");
	      System.out.println("r_id겟 클리닉1"+c1vo.getR_id());
	      service.clinic1(c1vo);
	      mv.addObject("r_id",c1vo.getR_id());
	      mv.setViewName("clinic1");
	      return mv;
	   }
	
	@RequestMapping(value = "/msearch", method = RequestMethod.POST)
	   public ModelAndView msearch(Locale local, ModelAndView mv,
			   @ModelAttribute("msearchVO") dsearchVO mvo) throws Exception {
	      logger.info(local +"msearch.jsp");
	      List<diseVO> divo = service.dsearch(mvo);
	      
	      mv.addObject("list",divo);
	      mv.addObject("r_id",mvo.getR_id());
	      mv.setViewName("clinic1");
	      return mv;
	   }
	
	@RequestMapping(value = "/clinic2", method = RequestMethod.POST)
	   public ModelAndView clinic2(Locale local, ModelAndView mv,
			   @ModelAttribute("diseVO") diseVO divo) throws Exception {
	      logger.info(local +"clinic2.jsp");
	      System.out.println(divo.getR_id());
	      System.out.println(divo.getDi_id());
	      service.dinsert(divo);
	      mv.addObject("r_id",divo.getR_id());
	      mv.setViewName("clinic2");
	      return mv;
	   }
	
	@RequestMapping(value = "/medisearch", method = RequestMethod.POST)
	   public ModelAndView medisearch(Locale local, ModelAndView mv,
			   @ModelAttribute("msearchVO") dsearchVO mvo) throws Exception {
	      logger.info(local +"msearch.jsp");
	      List<mediVO> medivo = service.medisearch(mvo);
	      
	      mv.addObject("list",medivo);
	      mv.addObject("r_id",mvo.getR_id());
	      mv.setViewName("clinic2");
	      return mv;
	   }
	
	@RequestMapping(value = "/clinic3", method = RequestMethod.POST)
	   public ModelAndView clinic3(Locale local, ModelAndView mv,
			   @RequestParam(value="m_id", required=true) List<String> values
			   ,@RequestParam(value="r_id", required=true) String r_id
			   ,HttpServletRequest request) throws Exception {
	      logger.info(local +"clinic3.jsp");
	      List<mediVO> mvo = new ArrayList<mediVO>();
	      mediVO m=null;
	      System.out.println("r_id값 : "+r_id);
	      for(String value : values) {
	          System.out.println(value);
	          m = new mediVO();
	          m.setM_id(value);
	          m.setR_id(r_id);
	          mvo.add(m);
	      }
	      mediVO m1 = new mediVO();
	      m1.setR_id(r_id);
	      service.inprescription(mvo, m1);
	      
	      doctorVO dvo1 = new doctorVO();
			
			HttpSession session = request.getSession();
			dvo1.setD_id((String)session.getAttribute("id"));
			doctorVO dvo = service.getDoctorInfo(dvo1);
			session.setAttribute("regcount", dvo.getRegcount());
			session.setAttribute("count", dvo.getCount());
			
	        Calendar cal = Calendar.getInstance();
	        int mon = cal.get(Calendar.MONTH);
	    
	        mv.addObject("mon",(mon+1)%13);
	        
	        List<birthVO> dbirth1 = service.ListDoctorBirth(1);
	        List<birthVO> dbirth2 = service.ListDoctorBirth(2);
	        List<birthVO> dbirth3 = service.ListDoctorBirth(3);
	        birthVO tempb = new birthVO();
	        tempb.setD_name(" - ");
	        if (dbirth1.isEmpty()) { 
	        	dbirth1.add(tempb);
	        	mv.addObject("Dbirth1",dbirth1);
	        }
	        else mv.addObject("Dbirth1",dbirth1);
	        
	        if (dbirth2.isEmpty()) { 
	        	dbirth2.add(tempb);
	        	mv.addObject("Dbirth2",dbirth2);
	        }
	        else mv.addObject("Dbirth2",dbirth2);
	        
	        if (dbirth3.isEmpty()) { 
	        	dbirth3.add(tempb);
	        	mv.addObject("Dbirth3",dbirth3);
	        }
	        else mv.addObject("Dbirth3",dbirth3);
	      mv.setViewName("main");
	      return mv;
	   }
	
	/*
	//@ModelAttribute("departmentsVO") departmentsVO deptvo
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public ModelAndView index(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +" index 진입");
		
		
		mv.setViewName("index");
		mv.addObject("check","index 컨트롤러에서 받아온 문자열입니다.");
		return mv;
	}
	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public ModelAndView select(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +" select 진입");
		
		List<real_estateVO> vo = service.hwselect();
		mv.setViewName("hw3");
		mv.addObject("vo",vo);
		return mv;
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public ModelAndView insert(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +" insert 진입");
		List<real_estate_categoryVO> list = service.hwinsselect();
		mv.setViewName("hw4");
		mv.addObject("vo",list);
		return mv;
	}
	@RequestMapping(value = "/voinsert", method = RequestMethod.POST)
	public ModelAndView voinsert(Locale local, ModelAndView mv,
			@ModelAttribute("real_estate_categoryVO") real_estate_categoryVO vo) throws Exception {
		logger.info(local +" insert 진입");
		System.out.println(vo.getTYPE_ID() +" " +vo.getTYPE_NAME());
		int result = service.hwinsert(vo);
		System.out.println("삽입 결과 : "+ result);
		List<real_estate_categoryVO> list = service.hwinsselect();
		mv.setViewName("hw4view");
		mv.addObject("vo",list);
		return mv;
	}
	*/
	@RequestMapping(value = "/a", method = RequestMethod.GET)
	   public ModelAndView a(Locale local, ModelAndView mv) throws Exception {
	      logger.info(local +"질병정보 넣자");
	      service.a();
	      mv.setViewName("login");
	      return mv;
	   }
}
