package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/myclass/problem")
public class HproblemController {

	@RequestMapping(value ="/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list() {
		System.out.println("[ProblemController.list()]");
		return "home/problem/list2";
	}
	

}