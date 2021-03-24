package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.NoticeVo;

@Repository
public class NoticeDao {
	
	@Autowired
	private SqlSession sqlSession;

	//리스트
	public List<NoticeVo> list2() {
		System.out.println("[dao]:list2");
		return sqlSession.selectList("notice.list2");
	}
	
	//리스트 + 검색 : keyword 가져오기
	public List<NoticeVo> list1(String keyword) {
		System.out.println("[dao]:list1");
		System.out.println("keyword=" + keyword);
		
		List<NoticeVo> nList = sqlSession.selectList("notice.list1", keyword);
		
		return nList;
	}
	
	//리스트 + 검색 기능 + 페이징
	public List<NoticeVo> list(String keyword, int startRNum, int endRNum) {
		System.out.println("[dao]:list");
		//System.out.println("keyword=" + keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("startRNum", startRNum);
		map.put("endRNum", endRNum);
		//System.out.println(map);
		return sqlSession.selectList("notice.list", map);
	}
	
	//전체글 갯수 가져오기
	public int selectTotalCnt(String keyword) {
		System.out.println("[dao]:selectTotalCnt");
		
		return sqlSession.selectOne("notice.selectTotalCnt",keyword);
	}
	
	//수정하기
	public int update(NoticeVo noticeVo) {
		System.out.println("[dao]:update");
		
		return sqlSession.update("notice.update", noticeVo);
	}
	
	//1개 불러오기
	public NoticeVo selectOne(int no) {
		System.out.println("[dao]:selectOne");
		
		NoticeVo noticeVo = sqlSession.selectOne("notice.selectOne", no);
		return noticeVo;
	}
	
	//join_no 불러오기
	public int selJoin(int no) {
		System.out.println("[dao]:selectOne");
		
		 
		return sqlSession.selectOne("notice.sel", no);
	}
	
	//조회수 +1
	public int updateHit(int no) {
		System.out.println("[dao]:updateHit");
		return sqlSession.update("notice.updateHit", no);
	}
	
	public int insert(NoticeVo noticeVo) {
		System.out.println("[dao]:write");
		
		int count = sqlSession.insert("notice.insert", noticeVo);
		
		return count;
	}
	
	//삭제
	public int delete(int no) {
		System.out.println("[dao]:delete");
		
		return sqlSession.delete("notice.delete", no);
	}
	
}
