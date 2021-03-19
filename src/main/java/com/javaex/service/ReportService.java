package com.javaex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ReportDao;

@Service
public class ReportService {
	
	@Autowired
	private ReportDao reDao;
	
	public List<Map<String, Object>> getStList(int classNo) {
		
		return reDao.selStudentList(classNo);
	}
}
