package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Hban")
public class HbanContorller {

	@RequestMapping(value="/list", method= {RequestMethod.GET, RequestMethod.POST})
	public String  list() {
		System.out.println("[HbanController.list()]");
		return "home/ban/Hban";
	}
	
	@RequestMapping(value="/made", method= {RequestMethod.GET, RequestMethod.POST})
	public String made() {
		System.out.println("[HbanController.made()]");
		return "home/ban/HbanMade";
				
	}
	
	@RequestMapping(value="/plist", method= {RequestMethod.GET, RequestMethod.POST})
	public String plist() {
		System.out.println("[HbanController.list3()]");
		return "home/problem/list3";
				
	}
	
}
