package com.javaex.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.BanmainService;
import com.javaex.service.ExamService;

@Controller
@RequestMapping("/")
public class BmainController {
	
	@Autowired
	private ExamService examService;
	
	@Autowired
	private BanmainService banmainService;
	
	@ResponseBody
	@RequestMapping(value = "sessioncheck", method = { RequestMethod.GET, RequestMethod.POST })
	public boolean sessioncheck(HttpSession session) {
		System.out.println("세션체크");
		if(session.getAttribute("authUser") == null) {
			return false;
		}else {
			return true;
		}
	}
	
	@RequestMapping(value = "{url}", method = { RequestMethod.GET, RequestMethod.POST })
	public String list( @PathVariable("url") String url,
						@RequestParam(value = "crtPage", required = false ,defaultValue = "1") int crtPage,
						@RequestParam(value = "keyward",required = false,defaultValue = "") String keyward,Model model,HttpSession session) {
		System.out.println("[BanExamController.list()]");
		
		model.addAttribute("eMap", examService.examList(url,crtPage,keyward));
		if(examService.examList(url,crtPage,keyward) == null) {
			
			return "redirect:/user/loginForm";
		}
		if(banmainService.classInfo(url, session) == null) {
			return "redirect:/user/loginForm";
		}
		model.addAttribute("classInfo", banmainService.classInfo(url, session));

		
		return "ban/exam/list";
	}
	
	
	
	
	
	
}