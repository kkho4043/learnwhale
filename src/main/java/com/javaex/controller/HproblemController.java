package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/myclass/problem")
public class HproblemController {
	@RequestMapping(value ="/problem-Management", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemManagement() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/problem-Management";
	}

	@RequestMapping(value ="/multipleChoice", method = { RequestMethod.GET, RequestMethod.POST })
	public String multipleChoice() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/multipleChoiceForm";
	}
	
	@RequestMapping(value ="/ox", method = { RequestMethod.GET, RequestMethod.POST })
	public String ox() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/oxForm";
	}
	
	@RequestMapping(value ="/subjective", method = { RequestMethod.GET, RequestMethod.POST })
	public String subjective() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/subjectiveForm";
	}
	
	@RequestMapping(value ="/mcView", method = { RequestMethod.GET, RequestMethod.POST })
	public String mcView() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/mcViewForm";
	}
	
	@RequestMapping(value ="/oxView", method = { RequestMethod.GET, RequestMethod.POST })
	public String oxView() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/oxViewForm";
	}
	
	@RequestMapping(value ="/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String subjectiveView() {
		System.out.println("[ProblemController.list()]");
		return "home/main/index";
	}
	

}