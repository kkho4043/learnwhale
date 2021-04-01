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
		if (userVo == null) {
			return null;
		}
		int userNo = userVo.getNo();

		JoinUserVo jvo = banmainDao.selectuserInfo(url, userNo);
		
		String type = jvo.getType();
		
		if(type ==null) {
			jvo.setType("님");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("joinVo", jvo); // 접속유저 정보
		System.out.println("url = " + url);
		ClassVo cvo = banmainDao.selectclassInfo(url);

		map.put("cvo", cvo);
		UserVo cuVo = banmainDao.selectclassteacher(cvo.getClassNo());
		map.put("cuVo", cuVo);

		return map;
	}
	//반 가입신청
	public boolean joinclass(String url, HttpSession session) {
		//반 번호
		ClassVo cvo = banmainDao.selectclassInfo(url);
		
		//유저번호
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		if (userVo == null) {
			return false;
		}
		int userNo = userVo.getNo();
		banmainDao.joinclass(cvo.getClassNo(),userNo);
		return true;
	}
}
