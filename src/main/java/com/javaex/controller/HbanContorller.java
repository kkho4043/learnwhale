package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.UserService;

@Controller
@RequestMapping("/h")
public class HbanContorller {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/list", method= {RequestMethod.GET, RequestMethod.POST})
	public String  list() {
		System.out.println("[HbanController.list()]");
		return "home/ban/list";
	}
	
	@RequestMapping(value="/create", method= {RequestMethod.GET, RequestMethod.POST})
	public String made() {
		System.out.println("[HbanController.made()]");
		return "home/ban/createForm";			
	}
	
	@RequestMapping(value="/modify", method= {RequestMethod.GET, RequestMethod.POST})
	public String modify() {
		System.out.println("[HbanController.modify()]");
		return "home/ban/modifyForm";			
	}
	
	@RequestMapping(value="/list3", method= {RequestMethod.GET, RequestMethod.POST})
	public String list3() {
		System.out.println("[HbanController.list3()]");
		return "home/problem/list3";			
	}
	
	@RequestMapping(value="/category", method= {RequestMethod.GET, RequestMethod.POST})
	public String category() {
		System.out.println("[HbanController.category()]");
		return "home/include/category";			
	}
}
