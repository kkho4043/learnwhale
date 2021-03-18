package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.NoticeVo;

@Repository
public class NoticeDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<NoticeVo> list() {
		System.out.println("[NoticeDao.list()]");
		return sqlSession.selectList("notice.list");
	}
	
	
}
