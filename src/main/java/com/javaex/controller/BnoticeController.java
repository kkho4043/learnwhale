package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.NoticeService;
import com.javaex.vo.NoticeVo;

@Controller
@RequestMapping("/notice")
public class BnoticeController {
	
	@Autowired
	NoticeService noticeService;

	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {
		System.out.println("[Controller]:list");
		
		List<NoticeVo> nList = noticeService.list();
		
		model.addAttribute("nList", nList);
		
		return "ban/notice/list";
	}
	
	@RequestMapping(value= "write", method = { RequestMethod.GET, RequestMethod.POST })
	public String write() {
		System.out.println("[Controller]:write");
		
		noticeService.write();
		
		return "";
	}
	
	@RequestMapping(value ="/writeForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeForm() {
		System.out.println("[Controller.writeForm()]");
		return "ban/notice/writeForm";
	}

	@RequestMapping(value ="/remove", method = {RequestMethod.GET, RequestMethod.POST})
	public String remove() {
		
		return "";
	}

	@RequestMapping(value = "/modify", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify() {
		System.out.println("[Controller]:modify");
		
		return "";
	}
	
	@RequestMapping(value = "/modifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String modifyForm() {
		System.out.println("[Controller]:modifyForm");
		return "ban/notice/modifyForm";
	}
	
	@RequestMapping(value = "/read", method = { RequestMethod.GET, RequestMethod.POST })
	public String read() {
		System.out.println("[Controller]:read");
		return "ban/notice/read";
	}

	
	@RequestMapping(value ="/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		System.out.println("[main]");
		return "home/main/indexk";
	}
}
