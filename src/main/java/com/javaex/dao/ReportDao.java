package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ExamVo;

@Repository
public class ReportDao {
	
	@Autowired
	private SqlSession sqlSession;
	
		public List<Map<String, Object>> selStudentList(int classNo) {
			
			return sqlSession.selectList("report.selStudentList", classNo);
		}
		
		public List<ExamVo> selExamList(int joinNo, String type, String keyword, int page) {
			
			Map<String, Object> exMap = new HashMap<>();
			exMap.put("type", type);
			exMap.put("joinNo", joinNo);
			exMap.put("keyword", keyword);
			exMap.put("page", page);
			
			return sqlSession.selectList("report.selExamList", exMap);
		}
		
		public List<ExamVo> selAvgList(int joinNo) {
			
			return sqlSession.selectList("report.selAvgList", joinNo);
		}
		
		public int selTotalPost() {
			int n = sqlSession.selectOne("report.selTotalPost");
			
			System.out.println(n);
			return sqlSession.selectOne("report.selTotalPost");
		}
		
		
		
		
		
		
		
}
