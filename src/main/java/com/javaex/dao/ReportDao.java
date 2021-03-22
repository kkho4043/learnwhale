package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReportDao {
	
	@Autowired
	private SqlSession sqlSession;
	
		public List<Map<String, Object>> selStudentList(int classNo) {
			
			return sqlSession.selectList("report.selStudentList", classNo);
		}
		
		public List<String> selExamList(int joinNo, String type) {
			
			Map<String, Object> exMap = new HashMap<>();
			exMap.put("type", type);
			exMap.put("joinNo", joinNo);
		
			return sqlSession.selectList("report.selExamList", exMap);
		}
		
}
