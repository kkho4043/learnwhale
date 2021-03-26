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
	public int selectOne(String classUrl) {
		return sqlSession.selectOne("class.selectByUrl", classUrl);
	}
	
	//반생성
	public int classInsert(ClassVo classVo) {
		System.out.println("[classDao.classInsert()]");
		return sqlSession.insert("class.insert", classVo);
	}
	
	//반생성 후 선생님 join_user 테이블에 바로 insert
	public int tInsert(int classNo, int no) {
		System.out.println("[classDao.joinInsert()]");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("classNo", classNo);
		map.put("no", no);
		System.out.println("Map"+ map);
		return sqlSession.insert("class.tSelf",map);
	}
	
	//리스트
	public List<ClassVo> selectList(int no, String search){
		System.out.println("[classDao.selectList()]");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("search", search);
		return sqlSession.selectList("class.selectList", map);
	}
	
	//수정폼 가져오기
	public ClassVo selectOne(int classNo) {
		return sqlSession.selectOne("class.selectOne", classNo);
	}
	
	//수정
	public int update(ClassVo classVo) {
		System.out.println("[classDao.update()]");
		return sqlSession.update("class.update", classVo);
	}
	//url입력시 classNo 반환
	
	public int getclassNo(String url) {
		System.out.println("[classDao.dddd()]");
		return sqlSession.selectOne("class.selectclassNo", url);
	}
	
	//join user 선생님 삭제
	public int joinDelete(int classNo) {
		System.out.println("[classDao.joinDelete()]");
		return sqlSession.delete("class.joinDelete", classNo);
		
	}
	
	public int sCount(int classNo) {
		System.out.println("[classDao.sCount()]");
		return sqlSession.selectOne("class.sCount", classNo);
	}
	
}