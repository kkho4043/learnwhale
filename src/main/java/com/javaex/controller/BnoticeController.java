package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class BnoticeController {

	@RequestMapping(value ="/list", method = {RequestMethod.GET, RequestMethod.POST})
	public String list() {
		System.out.println("[BnoticeController.list()]");
		return "ban/notice/list";
	}
	
	@RequestMapping(value ="/read", method = {RequestMethod.GET, RequestMethod.POST})
	public String read() {
		System.out.println("[BnoticeController.read()]");
		return "ban/notice/read";
	}
	
}
