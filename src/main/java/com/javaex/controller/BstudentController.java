package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.StudentService;

@Controller
@RequestMapping(value="/{url}/student")
public class BstudentController {
	
	@Autowired
	private StudentService stService;
	
	@RequestMapping(value = "list", method = { RequestMethod.GET, RequestMethod.POST })
	public String studentList(@PathVariable("url") String url, HttpSession session,
							  @RequestParam(value="page", required= false, defaultValue = "1") int page,
							  Model model) {
		//UserVo authUser = (UserVo)session.getAttribute("authUser");
		//authUser.getNo();
		Map<String, Object> joinMap = stService.getList(1, url, page);
		Map<String, Object> blMap = stService.getBlogInfo(url);
		
		model.addAttribute("joinList", joinMap.get("joinList")); 
		model.addAttribute("paMap", joinMap.get("paMap"));
		model.addAttribute("blMap", blMap);
		
		return "ban/student/studentList";
	}
	

	@RequestMapping(value = "approve", method = { RequestMethod.GET, RequestMethod.POST })
	public String approve(@PathVariable("url") String url,
						  HttpServletRequest request, 
						  Model model) {
		
		try {
			String[] arr = request.getParameterValues("userNo");
			
			//UserVo authUser = (UserVo)session.getAttribute("authUser");
			//int no = authUser.getNo();
			
			int success = stService.approve(url, arr, 1);
		
			if(success != arr.length) {
				model.addAttribute("success", "fail");
			
			}
		
			return "redirect:list";
			
		} catch(NullPointerException e) {
			return "redirect:list";
		}
		
		
		
	}
	
	@RequestMapping(value = "wait", method = { RequestMethod.GET, RequestMethod.POST })
	public String wait(@PathVariable("url") String url,
					   HttpServletRequest request, Model model) {
		
		try {
			String[] arr = request.getParameterValues("userNo");
			
			//UserVo authUser = (UserVo)session.getAttribute("authUser");
			//int no = authUser.getNo();
			
			int success = stService.waitStatus(url, arr, 1);
		
			if(success != arr.length) {
				model.addAttribute("success", "fail");
			
			}
		
			return "redirect:list";
			
		} catch(NullPointerException e) {
			return "redirect:list";
		}
	}
	
	@RequestMapping(value = "delete", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(@PathVariable("url") String url,
						 HttpServletRequest request, Model model) {
		
		try {
			String[] arr = request.getParameterValues("userNo");
			
			//UserVo authUser = (UserVo)session.getAttribute("authUser");
			//int no = authUser.getNo();
			
			int success = stService.delete(url, arr, 1);
		
			if(success != arr.length) {
			model.addAttribute("success", "fail");
			
			}
		
			return "redirect:list";
			
		} catch(NullPointerException e) {
			return "redirect:list";
		}
	}
	
}
