package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/abc/exam")
public class BexamController {

	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list() {
		System.out.println("[BanExamController.list()]");
		return "ban/exam/list";
	}

	@RequestMapping(value = "/problemlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemlist() {
		System.out.println("[BanExamController.problemlist()]");
		return "ban/exam/problemlist";
	}
	
	@RequestMapping(value = "/solve", method = { RequestMethod.GET, RequestMethod.POST })
	public String examsolve() {
		System.out.println("[BanExamController.solve()]");
		return "ban/exam/examsolve";
	}
	
	@RequestMapping(value = "/end", method = { RequestMethod.GET, RequestMethod.POST })
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