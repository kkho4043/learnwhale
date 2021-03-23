package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javaex.service.ClassService;
import com.javaex.vo.ClassVo;

@Controller
@RequestMapping("/h")
public class HbanContorller {

	@Autowired
	private ClassService classService;

	//반 리스트
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {
		System.out.println("[HbanController.list()]");
		List<ClassVo> classList = classService.list();
		model.addAttribute("classList", classList);
		return "home/ban/list";
	}

	//반 수정
	@RequestMapping(value = "/modifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String modify() {
		System.out.println("[HbanController.modify()]");
		return "home/ban/modifyForm";
	}
	
	//반생성 url 중복체크
	@ResponseBody
	@RequestMapping(value="/urlcheck", method = {RequestMethod.GET, RequestMethod.POST})
	public String urlcheck(@RequestParam("classUrl") String classUrl) {
		System.out.println("classUrl = " + classUrl);
		String result = classService.urlcheck(classUrl);
		return result;
	}
	
	 // 반생성폼
	 @RequestMapping(value = "/createForm", method = { RequestMethod.GET,
	 RequestMethod.POST }) public String made() {
	 return "home/ban/createForm"; 
	 }
	 
	 //반생성
	@RequestMapping(value = "/create", method = { RequestMethod.GET, RequestMethod.POST })
	public String create(@ModelAttribute ClassVo classVo,
						 @RequestParam(value = "logoFile",required = false,defaultValue = "") MultipartFile file) {
		System.out.println("[HbanController.create()]");
		System.out.println(file);
		classService.create(classVo, file);
		
		return "home/ban/list";

	}


}
