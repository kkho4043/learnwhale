package com.javaex.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ExamVo;

@Repository
public class ExamDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void examinsert() {
		System.out.println("dao");
		sqlSession.insert("exam.examinsert");
	}

	
	public List<ExamVo> examList(int classNo){
		System.out.println("[examDao.examList]");
		return sqlSession.selectList("exam.examList",classNo);
	}
}
