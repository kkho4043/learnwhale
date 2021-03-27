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
	
		public List<Map<String, Object>> selStudentList(String url, int userNo) {
			
			Map<String, Object> map = new HashMap<>(3);
			map.put("url", url);
			map.put("userNo", userNo);
			
			return sqlSession.selectList("report.selStudentList", map);
		}
		
		
		public int selNo(String url) {
			  
			  return sqlSession.selectOne("report.selNo", url);
		  }
		
		
		public List<ExamVo> selExamList(int joinNo, String type, String keyword, 
										int startNum, int endNum) {
			
			Map<String, Object> exMap = new HashMap<>();
			exMap.put("type", type);
			exMap.put("joinNo", joinNo);
			exMap.put("keyword", keyword);
			exMap.put("startNum", startNum);
			exMap.put("endNum", endNum);
			
			return sqlSession.selectList("report.selExamList", exMap);
		}
		
		public List<ExamVo> selAvgList(int joinNo) {
			
			return sqlSession.selectList("report.selAvgList", joinNo);
		}
		
		public int selTotalPost(int joinNo, String type, String keyword) {
			Map<String, Object> map = new HashMap<>(5);
			map.put("joinNo", joinNo);
			map.put("type", type);
			map.put("keyword", keyword);
			return sqlSession.selectOne("report.selTotalPost", map);
		}
		
		
}
