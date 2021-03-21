package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ClassService;
import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/h")
public class HbanContorller {

	@Autowired 
	private UserService userService;
	private ClassService classService;
	
	
	@RequestMapping(value="/list", method= {RequestMethod.GET, RequestMethod.POST})
	public String  list() {
		System.out.println("[HbanController.list()]");
		return "home/ban/list";
	}
	
	@RequestMapping(value="/createForm", method= {RequestMethod.GET, RequestMethod.POST})
	public String made() {
		System.out.println("[HbanController.made()]");
		return "home/ban/createForm";			
	}
	
	@RequestMapping(value="/modifyForm", method= {RequestMethod.GET, RequestMethod.POST})
	public String modify() {
		System.out.println("[HbanController.modify()]");
		return "home/ban/modifyForm";			
	}
	
	//회원가입
	@RequestMapping(value = "/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("[HomeMain()-join]");
		
		System.out.println(userVo);
		userService.join(userVo);
		
		return "home/main/index";
	}
	
	//로그인
	@RequestMapping(value="login", method = {RequestMethod.GET, RequestMethod.POST })
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[HomeMain()-login]");
		
		UserVo authUser = userService.login(userVo);
		return "redirect:/";	
	}
}
