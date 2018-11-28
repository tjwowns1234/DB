package com.db.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.db.dto.departmentsVO;
import com.db.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +" / 진입");
		List<departmentsVO> abc = service.deptList();
		mv.setViewName("home");
		mv.addObject("DL",abc);
		return mv;
	}
	//@ModelAttribute("departmentsVO") departmentsVO deptvo
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public ModelAndView index(Locale local, ModelAndView mv) throws Exception {
		logger.info(local +" index 진입");
		mv.setViewName("index");
		mv.addObject("check","index 컨트롤러에서 받아온 문자열입니다.");
		return mv;
	}
	
	
}
