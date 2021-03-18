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
	public String creatingViewForm() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/creating-ViewForm";
	}
	
	@RequestMapping(value ="/category", method = { RequestMethod.GET, RequestMethod.POST })
	public String category() {
		System.out.println("[ProblemController.list()]");
		return "home/include/category";
	}
	
	@RequestMapping(value ="/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String index() {
		System.out.println("[ProblemController.list()]");
		return "home/main/mainForm";
	}

}