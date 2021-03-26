package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;
import com.javaex.vo.ProblemVo;

@Repository
public class ProblemDao {

	@Autowired
	private SqlSession sqlSession;

	// 카테고리
	public List<CategoryVo> selectCategory(int userNo) {
		System.out.println("CateDao- getCategory");

		return sqlSession.selectList("category.selectCategory", userNo);
	}

	// 메인폴더
	public int addMainFolder(CategoryVo cateVo) {
		System.out.println("CateDao- getcateVo");
		return sqlSession.insert("category.addMainFolder", cateVo);
	}

	// 서브폴더
	public int addSubFolder(CategoryVo cateVo) {
		System.out.println("CateDao- addSubFolder()");
		return sqlSession.insert("category.addSubFolder", cateVo);
	}

	public int updateFolder(CategoryVo cateVo) {
		System.out.println("CateDao- updateFolder()");

		return sqlSession.update("category.updateFolder", cateVo);
	}

	// 문제 리스트
	public List<ProblemVo> selectProblem(int cateNo) {
		System.out.println("ProDao- selectProblem");

		return sqlSession.selectList("category.selectProblem", cateNo);
	}

	// 문제 작성
	public int ProblemInsert(ProblemVo proVo) {
		System.out.println("ProDao- ProblemInsert");
		System.out.println("ProDao- ProblemInsert" + proVo);

		return sqlSession.insert("category.problemInsert", proVo);
	}

	// 보기 파일 넣기
	public int ChoiceInsert(String filepath,String choiceContent,int proNo, int orderNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("choiceContent", choiceContent);
		map.put("filepath", filepath);
		map.put("proNo", proNo);
		map.put("orderNo", orderNo);

		return sqlSession.insert("category.ChoiceInsert", map);
	}
	
	//문제 보기
	public ProblemVo problemView(int proNo) {
		System.out.println("ProDao- problemView");
		
		return sqlSession.selectOne("category.problemView", proNo);
	}
	
	
	// 문제 수정
	public int ProblemModify(ProblemVo proVo) {
		System.out.println("ProDao- ProblemModefy");

		return sqlSession.update("category.ProblemModefy", proVo);
	}

	// 보기 파일 수정
	public int ChoiceModify(String filepath,String choiceContent,int proNo, int orderNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("choiceContent", choiceContent);
		map.put("filepath", filepath);
		map.put("proNo", proNo);

		return sqlSession.insert("category.ChoiceModify", map);
	}


}
