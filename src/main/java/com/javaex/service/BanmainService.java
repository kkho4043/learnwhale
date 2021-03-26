package com.javaex.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BanmainDao;
import com.javaex.vo.JoinUserVo;

@Service("/BanmainService")
public class BanmainService {

	@Autowired
	BanmainDao banmainDao;
	
	public JoinUserVo userInfo(String url,HttpSession session) {
		
		
		try {
			int userNo = (int)session.getAttribute("authUser");
			return banmainDao.selectuserInfo(url , userNo);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
