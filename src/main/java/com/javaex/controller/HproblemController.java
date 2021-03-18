package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ProblemService;

@Controller
@RequestMapping("/myclass/problem")
public class HproblemController {
	
	@Autowired
	private ProblemService proService;
	
	
	@RequestMapping(value ="/problem-Management", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemManagement(Model model) {
		
		proService.getCategory(2);
		
		model.addAttribute("cateList", proService.getCategory(2));
			
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
	 
	

	@RequestMapping(value ="/main", method = { RequestMethod.GET, RequestMethod.POST })
	public String index() {
		System.out.println("[ProblemController.list()]");
		return "home/main/mainForm";
	}

}