package com.javaex.dao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ExamDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void examinsert() {
		System.out.println("dao");
		sqlSession.insert("exam.examinsert");
	}

}
