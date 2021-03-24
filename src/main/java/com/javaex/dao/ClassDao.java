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
	public int classInsert(ClassVo classVo) {
		System.out.println("[classDao.classInsert()]");
		return sqlSession.insert("class.insert", classVo);
	}
	
	//반생성 후 선생님 join_user 테이블에 바로 insert
	public int joinInsert(int classNo, int no) {
		System.out.println("[classDao.joinInsert()]");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("classNo", classNo);
		map.put("no", no);
		System.out.println("Map"+ map);
		return sqlSession.insert("class.self",map);
	}
	
	//리스트
	public List<ClassVo> selectList(int no){
		System.out.println("[classDao.selectList()]");
		return sqlSession.selectList("class.selectList", no);
	}
	
}
