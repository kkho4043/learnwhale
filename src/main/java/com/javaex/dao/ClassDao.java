package com.javaex.dao;

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
		System.out.println("[classDao.selectOne()]");
		return sqlSession.selectOne("class.selectByUrl", classUrl);
	}
	
	//반생성
	public int insert(ClassVo classVo, String filepath) {
		System.out.println("[classDao.insert()]");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("filepath", filepath);
		map.put("classVo", classVo);
		
		return sqlSession.insert("class.insert", map);
	}
	
	//리스트
	public List<ClassVo> selectList(){
		System.out.println("[classDao.selectList()]");
		return sqlSession.selectList("class.selectList");
	}
}
