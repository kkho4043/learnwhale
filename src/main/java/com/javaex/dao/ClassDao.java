package com.javaex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ClassVo;

@Repository
public class ClassDao {

	@Autowired
	private SqlSession sqlSession;
	
	//반생성 url 체크
	public ClassVo selectOne(String classUrl) {
		return sqlSession.selectOne("class.selectByUrl", classUrl);
	}
	
	//반생성
	public int insert(ClassVo classVo) {
		System.out.println("[classDao.insert()]");
		return sqlSession.insert("class.insert", classVo);
	}
	
	//리스트
	public List<ClassVo> selectList(int no){
		System.out.println("[classDao.selectList()]");
		return sqlSession.selectList("class.selectList", no);
	}
	
	public int selectwaiting(ArrayList<Integer> arr) {
		System.out.println("[classDao.selectwaiting()]");
		return sqlSession.selectOne("class.waiting", arr);
	}
	
	public int selectapproval(ArrayList<Integer> arr) {
		System.out.println("[classDao.selectapproval()]");
		return sqlSession.selectOne("class.approval", arr);
	}
}
