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

	@RequestMapping(value ="/creatingForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String multipleChoice() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/creatingForm";
	}
	
	@RequestMapping(value ="/creating-ViewForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String mcView() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/creating-ViewForm";
	}

}