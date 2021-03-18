package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ExamService;

@Controller
@RequestMapping("/abc/exam")
public class BexamController {
	
	@Autowired
	private ExamService examService;
	
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list() {
		System.out.println("[BanExamController.list()]");
		
		examService.examinsert();
		return "ban/exam/list";
	}

	@RequestMapping(value = "/problemlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemlist() {
		System.out.println("[BanExamController.problemlist()]");
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
	public String grant() {
		System.out.println("[BanExamController.grant()]");
		return "ban/exam/examgrant";
	}

}