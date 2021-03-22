package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.ReportService;

@Controller
@RequestMapping("/abc/report")
public class BreportController {
	
	@Autowired
	private ReportService reService;
	
	@RequestMapping(value ="/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(@RequestParam(value="type", required = false, defaultValue = "all") String type,
					   @RequestParam(value="joinNo", required = false, defaultValue="0") int joinNo,
					   Model model) {
		
		
		model.addAttribute("joinList", reService.getList(1, type, joinNo).get("joinList"));
		model.addAttribute("exList", reService.getList(1, type, joinNo).get("exList"));
		
		return "ban/report/reportList";
	}
	

}