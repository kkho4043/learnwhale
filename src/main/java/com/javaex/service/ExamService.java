package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ExamDao;

@Service("/BlogBasicService")
public class ExamService {

	@Autowired
	ExamDao examDao;
	
	public void examinsert(){
		System.out.println("service");
		examDao.examinsert();
	}

}
