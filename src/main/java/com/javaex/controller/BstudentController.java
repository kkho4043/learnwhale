package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.StudentService;

@Controller
@RequestMapping(value="abc/student")
public class BstudentController {
	
	@Autowired
	private StudentService stService;
	
	@RequestMapping(value = "list", method = { RequestMethod.GET, RequestMethod.POST })
	public String studentList() {
		
		stService.getList();
		
		return "ban/student/studentList";
	}
	
	
	
	
	
	
	
}
