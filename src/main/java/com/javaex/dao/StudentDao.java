package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void selectList(int classNo) {
		
		sqlSession.selectList("student.selectList", classNo);
	}
	
}
