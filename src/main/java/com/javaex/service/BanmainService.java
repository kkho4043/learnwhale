package com.javaex.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BanmainDao;
import com.javaex.vo.ClassVo;
import com.javaex.vo.JoinUserVo;
import com.javaex.vo.UserVo;

@Service("/BanmainService")
public class BanmainService {

	@Autowired
	BanmainDao banmainDao;

	public Map<String, Object> classInfo(String url, HttpSession session) {
		System.out.println(session);
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		System.out.println("userVo = "+userVo.toString());
		int userNo = userVo.getNo();
		
		JoinUserVo jvo = banmainDao.selectuserInfo(url, userNo);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("joinVo",jvo); //접속유저 정보
		System.out.println("url = "+url);
		ClassVo cvo = banmainDao.selectclassInfo(url);
		
		map.put("cvo",cvo);
		System.out.println("cvo = "+cvo.toString());
		UserVo cuVo = banmainDao.selectclassteacher(cvo.getClassNo());
		map.put("cuVo", cuVo);

		return map;
	}
}
