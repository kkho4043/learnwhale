package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.ExamService;
import com.javaex.service.ProblemService;

@Controller
@RequestMapping("/abc/exam")
public class BexamController {
	
	@Autowired
	private ExamService examService;
	
	@Autowired
	private ProblemService proService;
	
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(@RequestParam(value = "crtPage", required = false ,defaultValue = "1") int crtPage,
						@RequestParam(value = "keyward",required = false,defaultValue = "") String keyward,
						Model model) {
		System.out.println("[BanExamController.list()ddddddddddd]");
		System.out.println("keyward = "+keyward);
		
		model.addAttribute("eMap", examService.examList(1,crtPage,keyward));
		return "ban/exam/list";
	}

	@RequestMapping(value = "/problemlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemlist(Model model,
							@RequestParam(value = "examNo") int examNo,
							@RequestParam(value = "joinNo", required = false ,defaultValue = "1") int joinNo,
							@RequestParam(value = "crtPage", required = false ,defaultValue = "1") int crtPage) {
		System.out.println("[BanExamController.problemlist()]");
		
		model.addAttribute("upMap", examService.examproList(examNo ,joinNo ,crtPage));
		return "ban/exam/problemlist";
	}

	@RequestMapping(value = "/problemscoring", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemsolve() {
		System.out.println("[BanExamController.problemscoring()]");
		return "ban/exam/problemscoring";
	}

	@RequestMapping(value = "/examstart", method = { RequestMethod.GET, RequestMethod.POST })
	public String examstart() {
		System.out.println("[BanExamController.end()]");
		return "ban/exam/examend";
	}

	@RequestMapping(value = "/examsolve", method = { RequestMethod.GET, RequestMethod.POST })
	public String examsolve() {
		System.out.println("[BanExamController.end()]");
		return "ban/exam/examsolve";
	}

	@RequestMapping(value = "/examend", method = { RequestMethod.GET, RequestMethod.POST })
	public String examend() {
		System.out.println("[BanExamController.end()]");
		return "ban/exam/examend";
	}

	@RequestMapping(value = "/grant", method = { RequestMethod.GET, RequestMethod.POST })
	public String grant(Model model ,@RequestParam(value = "cateNo", required = false ,defaultValue = "1") int cateNo) {
		System.out.println("[BanExamController.grant()]");
		
		model.addAttribute("cateList", proService.getCategory(2));
		
		model.addAttribute("proList", proService.getProblem(cateNo));
		return "ban/exam/examgrant";
	}

}