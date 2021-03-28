package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int insert(UserVo userVo) {
		System.out.println("dao - insert");
		System.out.println("userVo"+userVo);
		return sqlSession.insert("user.insert", userVo);
	}
	
	public UserVo selectUser(UserVo userVo) {
		System.out.println("UserDao-selectUser()");
		return sqlSession.selectOne("user.selectUser", userVo);
	}
	
	public UserVo selectOne(String id) {
		System.out.println("UserDao-selectOne()");
		return sqlSession.selectOne("user.selectById", id);
	}
}
