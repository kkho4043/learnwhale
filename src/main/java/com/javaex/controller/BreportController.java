package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/abc/report")
public class BreportController {
	
	@RequestMapping(value ="/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list() {
		System.out.println("[BanReportController.list()]");
		return "ban/report/list";
	}

}