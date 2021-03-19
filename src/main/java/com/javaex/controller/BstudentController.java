package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.StudentService;

@Controller
@RequestMapping(value="abc/student")
public class BstudentController {
	
	@Autowired
	private StudentService stService;
	
	@RequestMapping(value = "list", method = { RequestMethod.GET, RequestMethod.POST })
	public String studentList(Model model) {
		
		model.addAttribute("joinList", stService.getList(1)); 
		
		return "ban/student/studentList";
	}
	
	
	@RequestMapping(value = "approve", method = { RequestMethod.GET, RequestMethod.POST })
	public String approve(HttpServletRequest request, Model model) {
		
		try {
			String[] arr = request.getParameterValues("userNo");
			
			int success = stService.approve(arr);
		
			if(success != arr.length) {
			model.addAttribute("success", "fail");
			
			}
		
			return "redirect:list";
			
		} catch(NullPointerException e) {
			return "redirect:list";
		}
		
		
		
	}
	
	@RequestMapping(value = "wait", method = { RequestMethod.GET, RequestMethod.POST })
	public String wait(HttpServletRequest request, Model model) {
		
		try {
			String[] arr = request.getParameterValues("userNo");
			
			int success = stService.waitStatus(arr);
		
			if(success != arr.length) {
			model.addAttribute("success", "fail");
			
			}
		
			return "redirect:list";
			
		} catch(NullPointerException e) {
			return "redirect:list";
		}
	}
	
	@RequestMapping(value = "delete", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(HttpServletRequest request, Model model) {
		
		try {
			String[] arr = request.getParameterValues("userNo");
			
			int success = stService.delete(arr);
		
			if(success != arr.length) {
			model.addAttribute("success", "fail");
			
			}
		
			return "redirect:list";
			
		} catch(NullPointerException e) {
			return "redirect:list";
		}
	}
	
}
