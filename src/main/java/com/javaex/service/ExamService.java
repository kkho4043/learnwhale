package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ExamDao;
import com.javaex.vo.ExamVo;

@Service("/BlogBasicService")
public class ExamService {

	@Autowired
	ExamDao examDao;
	
	public void examinsert(){
		System.out.println("service");
		examDao.examinsert();
	}
	
	public List<ExamVo> examList(int classNo){
		
		return examDao.examList(classNo);
	}

}
