package com.javaex.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BanmainDao;
import com.javaex.vo.JoinUserVo;

@Service("/BanmainService")
public class BanmainService {

	@Autowired
	BanmainDao banmainDao;

	public Map<String, Object> classInfo(String url, HttpSession session) {

		int userNo = (int) session.getAttribute("authUser");
		JoinUserVo jvo = banmainDao.selectuserInfo(url, userNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("uname",jvo.getUsername());
		map.put("utype", jvo.getType());
		
		
		return null;
	}
}
