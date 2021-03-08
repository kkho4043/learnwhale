package com.javaex.controller; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.ApiService;

@Controller
@RequestMapping(value="api/kakao")
public class ApiKakaoController {
	
	@Autowired
	private ApiService apiService;
	
	
	@RequestMapping(value="login", method= {RequestMethod.GET, RequestMethod.POST})
	public String login(@RequestParam("code") String code,
						HttpSession session) {
		
		String accessToken = apiService.getAccessToken(code);
		System.out.println(accessToken);
		
		session.setAttribute("accessToken", accessToken);
		
		return "user/kakaoLogin";
	}
	
	
	@RequestMapping(value="unlink", method= {RequestMethod.GET, RequestMethod.POST})
	public void unlink(HttpSession session) {
		
		String accessToken = (String)session.getAttribute("accessToken");
		
		apiService.unlink(accessToken);
		
		
	}
	
	
	
	@RequestMapping(value="logout", method= {RequestMethod.GET, RequestMethod.POST})
	public void logout(HttpSession session) {
		
		String accessToken = (String)session.getAttribute("accessToken");
		
		apiService.logout(accessToken);
	}
	
	@RequestMapping(value="getData", method= {RequestMethod.GET, RequestMethod.POST})
	public void getData(HttpSession session) {
	
		String accessToken = (String)session.getAttribute("accessToken");
		
		apiService.getData(accessToken);
	
	}
	
	
	
	
}