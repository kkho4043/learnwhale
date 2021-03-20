package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ReportService;

@Controller
@RequestMapping("/abc/report")
public class BreportController {
	
	@Autowired
	private ReportService reService;
	
	@RequestMapping(value ="/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {
		
		model.addAttribute("joinList", reService.getList(1).get("joinList"));
		model.addAttribute("exList", reService.getList(1).get("exList"));
		
		return "ban/report/reportList";
	}
	

}