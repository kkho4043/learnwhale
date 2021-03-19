package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.StudentDao;

@Service
public class StudentService {
	
	@Autowired
	private StudentDao stDao;
	
	public void getList(int classNo) {
		
		stDao.selectList(classNo);
	}
	
	
	
}
