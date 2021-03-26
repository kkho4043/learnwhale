package com.javaex.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	 
	  public List<Map<String, Object>> selectList(String url) {
	  
	  return sqlSession.selectList("student.selectList", url); 
	  
	  }
	 
	  public int selNo(int classNo) {
		  
		  return sqlSession.selectOne("student.selNo", classNo);
	  }
	  
	   
	  public int updateApprove(int[] userNo) {
		  
		  return sqlSession.update("student.updateApprove", userNo);
		  
	  }
	  
	  public int updateWait(int[] userNo) {
		  
		  return sqlSession.update("student.updateWait", userNo);
		  
	  }
	  
	  
	  public int updateDelete(int[] userNo) {
		  
		  return sqlSession.update("student.updateDelete", userNo);
		  
	  }
}
