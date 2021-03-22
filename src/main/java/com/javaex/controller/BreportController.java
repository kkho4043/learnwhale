package com.javaex.controller;


import java.util.Map;

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
					   @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
					   @RequestParam(value="page", required = false, defaultValue = "1") int page,
					   Model model) {
		
		Map<String, Object> reMap = reService.getList(1, type, joinNo, keyword, page);
		
		model.addAttribute("joinList", reMap.get("joinList"));
		model.addAttribute("exList", reMap.get("exList"));
		model.addAttribute("avgList", reMap.get("avgList"));
				
		return "ban/report/reportList";
	}
	
	
	
	

}