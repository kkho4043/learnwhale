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
@RequestMapping("/")
public class HuserController {

	@Autowired
	private UserService userService;
	
	// 회원가입
	@RequestMapping(value = "/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("[HomeMain()-join]");

		System.out.println(userVo);
		userService.join(userVo);

		return "home/main/join";
	}

	// 로그인
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[HomeMain()-login]");

		UserVo authUser = userService.login(userVo);
		if(authUser != null) {
			System.out.println("login 성공");
			session.setAttribute("authUser", authUser);
			return "redirect:/login";
		}	else {
			System.out.println("login 실패");
			return "redirect:/user/loginForm?result=fail";
		}
		
	}
}
