package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.vo.UserVo;

@Controller
public class HmainController {

	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public String main() {
		System.out.println("[HomeMain()]");
		return "home/main/index";
	}

}