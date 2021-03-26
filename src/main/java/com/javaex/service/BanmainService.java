package com.javaex.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BanmainDao;
import com.javaex.vo.ClassVo;
import com.javaex.vo.JoinUserVo;

@Service("/BanmainService")
public class BanmainService {

	@Autowired
	BanmainDao banmainDao;

	public Map<String, Object> classInfo(String url, HttpSession session) {

		int userNo = (int) session.getAttribute("authUser");
		JoinUserVo jvo = banmainDao.selectuserInfo(url, userNo);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("joinVo",jvo); //접속유저 정보
		
		ClassVo cvo = banmainDao.selectclassInfo(url);
		
		map.put("ctitle","여기");
		map.put("startdate","여기");
		map.put("cenddate","여기");
		
		
		map.put("cuname","여기");
		map.put("cuid","여기");
		map.put("cuemail","여기");
		map.put("cuprofile","여기");
		map.put("cuphoneNum","여기");
		
		return null;
	}
}
