package com.javaex.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ClassVo;
import com.javaex.vo.JoinUserVo;

@Repository
public class BanmainDao {

	@Autowired
	private SqlSession sqlSession;

	public JoinUserVo selectuserInfo(String url, int userNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("url",url);
		map.put("userNo", userNo);	
		return sqlSession.selectOne("banmain.selectjoinuser",map);
	}
	
	public ClassVo selectclassInfo(String url) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("url",url);
			
		return sqlSession.selectOne("banmain.selectjoinclass",url);
	}
	
}
