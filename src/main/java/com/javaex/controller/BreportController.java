package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.BanmainService;
import com.javaex.service.ReportService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="/{url}/report")
public class BreportController {
	
	@Autowired
	private ReportService reService;
	
	@Autowired
	private BanmainService banmainService;
	
	@RequestMapping(value ="list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(@PathVariable("url") String url,
					   @RequestParam(value="type", required = false, defaultValue = "all") String type,
					   @RequestParam(value="joinNo", required = false, defaultValue="0") int joinNo,
					   @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
					   @RequestParam(value="page", required = false, defaultValue = "1") int page,
					   Model model, HttpSession session) {
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo = authUser.getNo();
		Map<String, Object> reMap = reService.getList(url, type, joinNo, keyword, page, userNo); 
		
		banmainService.classInfo(url, session);
		
		model.addAttribute("classInfo", banmainService.classInfo(url, session));
		model.addAttribute("joinList", reMap.get("joinList"));
		model.addAttribute("exList", reMap.get("exList"));
		model.addAttribute("avgList", reMap.get("avgList"));
		model.addAttribute("paMap", reMap.get("paMap"));
		
		return "ban/report/reportList";
	}
	
	
	
	

}