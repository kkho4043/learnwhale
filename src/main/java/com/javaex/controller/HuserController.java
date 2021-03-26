package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/user")
public class HuserController {

	@Autowired
	private UserService userService;
	
	//joinOk
	@RequestMapping(value = "/joinOk", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinOk() {
		System.out.println("joinOk");
		return "home/main/joinOk";
	}
	
	//회원가입 폼
	@RequestMapping(value = "/joinForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinForm() {
		System.out.println("user()-joinForm");
		return "home/main/joinForm";
	}
	
	// 회원가입
	@RequestMapping(value = "/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("[user()-join]");

		System.out.println(userVo);
		userService.join(userVo);

		return "home/main/joinOk";
	}

	
	//로그인폼
	@RequestMapping(value = "/loginForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginForm() {
		System.out.println("[user()-loginForm]");
		return "home/main/loginForm";
	}
	
	// 로그인
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[HomeMain()-login]");
		
		UserVo authUser = userService.login(userVo);
		if(authUser != null) {
			System.out.println("login 성공");
			session.setAttribute("authUser", authUser);
			return "redirect:/h/list";
		}	else {
			System.out.println("login 실패");
			return "redirect:/user/loginForm?result=fail";
		}
		
	}
}
