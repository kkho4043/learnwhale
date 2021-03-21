package com.javaex.dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ExamVo;
import com.javaex.vo.JoinUserVo;
import com.javaex.vo.ProblemVo;

@Repository
public class ExamDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void examinsert() {
		System.out.println("dao");
		sqlSession.insert("exam.examinsert");
	}

	
	public List<ExamVo> examList(int classNo ,String keyward, int startNum, int endNum){
		System.out.println("[examDao.examList]");
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("classNo",classNo);
		
		map.put("keyward",keyward);
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		
		return sqlSession.selectList("exam.examList",map);
	}
	
	public int selectTotalCnt(String keyward,int classNo) {
		
		Map <String ,Object> map = new HashMap<String,Object>();
		
		
		map.put("classNo",classNo);
		map.put("keyward",keyward);
		
		return sqlSession.selectOne("exam.selectTotalCnt" ,map);
	}
	
	public List<JoinUserVo> examuserList(int examNo) {
		return sqlSession.selectList("exam.examuserlist" ,examNo);
	}
	
	public List<ProblemVo> examproList(int examNo,int joinNo) {
		Map <String ,Object> map = new HashMap<String,Object>();
		map.put("examNo",examNo);
		map.put("joinNo",joinNo);
		
		return sqlSession.selectList("exam.examprolist" ,map);
	}
}
