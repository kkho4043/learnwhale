package com.javaex.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.vo.ProblemVo;

@Service
public class CategoryService {
	
	@Autowired
	ProblemDao proDao;
	
	public List<ProblemVo> getProblem(int cateNo) {
	
		return proDao.selectProblem(cateNo);
	}
	
	
}
