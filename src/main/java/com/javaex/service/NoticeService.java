package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.NoticeDao;
import com.javaex.vo.NoticeVo;

@Service("/service")
public class NoticeService {
	
	@Autowired
	NoticeDao noticeDao;
	
	public List<NoticeVo> list() {
		System.out.println("[Service.list()]");
		
		List<NoticeVo> nList = noticeDao.list();
		System.out.println(nList);
		
		return nList;
	}	
	
	public void write() {
		System.out.println("[Service.write()]");
		//noticeDao.write();
	}
}
