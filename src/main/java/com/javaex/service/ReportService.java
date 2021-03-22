package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ReportDao;
import com.javaex.dao.StudentDao;

@Service
public class ReportService {
	
	@Autowired
	private ReportDao reDao;
	@Autowired
	private StudentDao stDao;
	
	public Map<String, Object> getList(int classNo, String type, int joinNo) {
		
		if(joinNo ==0) {
			
			joinNo = stDao.selNo(classNo);
		}
		
		Map<String, Object> reMap = new HashMap<String, Object>();
		reMap.put("joinList", reDao.selStudentList(classNo));
		reMap.put("exList", reDao.selExamList(joinNo, type));
				
		return reMap;
	}
	
	
	
	
	
}
