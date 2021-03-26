package com.javaex.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.BanmainService;
import com.javaex.service.ExamService;

@Controller
@RequestMapping("/")
public class BmainController {
	
	@Autowired
	private ExamService examService;
	
	@Autowired
	private BanmainService banmainService;
	
	@RequestMapping(value = "{url}", method = { RequestMethod.GET, RequestMethod.POST })
	public String list( @PathVariable("url") String url,
						@RequestParam(value = "crtPage", required = false ,defaultValue = "1") int crtPage,
						@RequestParam(value = "keyward",required = false,defaultValue = "") String keyward,Model model,HttpSession session) {
		System.out.println("[BanExamController.list()]");
		model.addAttribute("eMap", examService.examList(url,crtPage,keyward));
		model.addAttribute("juser", banmainService.userInfo(url, session));

		
		return "ban/exam/list";
	}
}