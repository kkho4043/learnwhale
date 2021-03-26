package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.StudentService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="/{url}/student")
public class BstudentController {
	
	@Autowired
	private StudentService stService;
	
	@RequestMapping(value = "list", method = { RequestMethod.GET, RequestMethod.POST })
	public String studentList(@PathVariable("url") String url, HttpSession session,
							  Model model) {
		//UserVo authUser = (UserVo)session.getAttribute("authUser");
		//authUser.getNo();
		model.addAttribute("joinList", stService.getList(url)); 

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
