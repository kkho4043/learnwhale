package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/abc/exam")
public class BexamController {

	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list() {
		System.out.println("[BanReportController.list()]");
		return "ban/exam/list";
	}

	@RequestMapping(value = "/problemlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String problemlist() {
		System.out.println("[BanReportController.list()]");
		return "ban/exam/problemlist";
	}

}