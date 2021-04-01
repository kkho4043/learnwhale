package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.ClassService;
import com.javaex.vo.ClassVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/myclass")
public class HbanContorller {

	@Autowired
	private ClassService classService;

	//반 리스트
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model, HttpSession session,
						@RequestParam(value="search", required = false, defaultValue = "") String search,
						@RequestParam(value="page", required = false, defaultValue = "1") int page) {
		System.out.println("[HbanController.list()]");
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		Map<String, Object> pMap = classService.list(userVo.getNo(), search, page);
		
		model.addAttribute("pMap", pMap);
		
		return "home/ban/list";
	}

	//반 수정폼
	@RequestMapping(value = "/modifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String modifyForm(Model model, @RequestParam("classNo") int classNo) {
		System.out.println("[HbanController.modifyForm()]");
		
		ClassVo classVo = classService.selectOne(classNo);
		model.addAttribute("classVo", classVo);
		
		return "home/ban/modifyForm";
	}
	
	//반 수정
	@RequestMapping(value = "/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modify(@ModelAttribute ClassVo classVo,
						@RequestParam(value = "logo", required = false, defaultValue = "") MultipartFile file) {
		System.out.println("[HbanController.modify()]");
		classService.update(classVo, file);
		return "redirect:list";
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
						 @RequestParam(value = "logo", required = false, defaultValue = "") MultipartFile file 
						 , HttpSession session) {
		System.out.println("[HbanController.create()]");
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		classService.create(classVo, file, userVo.getNo());
		
		return "redirect:list";
	}
	
	//반 삭제
	@RequestMapping(value = "/remove", method = {RequestMethod.GET, RequestMethod.POST})
	public String remove(@RequestParam("classNo") int classNo) {
		System.out.println("[HbanController.remove()]");
		System.out.println(classNo);
		int count = classService.remove(classNo);
		if(count == -1) {
			System.out.println("삭제실패");
			return "redirect:list?count="+count;
		}
				
			
		return "redirect:list";
		
		
	}
}

