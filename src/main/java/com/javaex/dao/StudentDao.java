package com.javaex.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	 
	  public List<Map<String, Object>> selectList(int userNo, String url, int startNum, int endNum) {
		  
		  Map<String, Object> map = new HashMap<>(6);
		  map.put("userNo", userNo);
		  map.put("url", url);
		  map.put("startNum", startNum);
		  map.put("endNum", endNum);
		  
		  return sqlSession.selectList("student.selectList", map); 
	  
	  }
	  
	  public Map<String, Object> selBlogInfo(String url){
		  
		  return sqlSession.selectOne("student.selBlogInfo", url);
	  }
	  
	  
	  
	  public int selTotalPost(String url) {
		  
		  return sqlSession.selectOne("student.selTotalPost", url);
	  }
	  
	 
	   
	  public int updateApprove(String url, int[] userNo, int no) {
		  
		  Map<String, Object> map = new HashMap<>(5);
		  map.put("url", url);
		  map.put("userNo", userNo);
		  map.put("no", no);	
		  
		  return sqlSession.update("student.updateApprove", map);
		  
	  }
	  
	  public int updateWait(String url, int[] userNo, int no) {
		  
		  Map<String, Object> map = new HashMap<>(5);
		  map.put("url", url);
		  map.put("userNo", userNo);
		  map.put("no", no);
		  
		  return sqlSession.update("student.updateWait", map);
		  
	  }
	  
	  
	  public int updateDelete(String url, int[] userNo, int no) {
		  
		  Map<String, Object> map = new HashMap<>(5);
		  map.put("url", url);
		  map.put("userNo", userNo);
		  map.put("no", no);
		  
		  return sqlSession.update("student.updateDelete", map);
		  
	  }
}
