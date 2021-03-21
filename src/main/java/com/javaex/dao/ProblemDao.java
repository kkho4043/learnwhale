package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;
import com.javaex.vo.ProblemVo;

@Repository
public class ProblemDao {
		
		@Autowired
		private SqlSession sqlSession;
		
		//카테고리
		public List<CategoryVo>selectCategory(int userNo) {
			System.out.println("CateDao- getCategory");
			
			return sqlSession.selectList("category.selectCategory", userNo);
		}
		
		//메인폴더
		public int addMainFolder(CategoryVo cateVo) {
			System.out.println("CateDao- getcateVo");
			return sqlSession.insert("category.addMainFolder", cateVo);
		}
		
		//서브폴더
		public int addSubFolder(CategoryVo cateVo) {
			System.out.println("CateDao- addSubFolder()");
			return sqlSession.insert("category.addSubFolder", cateVo);
		}
		
		//문제 리스트
		public List<ProblemVo>selectProblem(int cateNo){
			System.out.println("ProDao- selectProblem");
			
			return sqlSession.selectList("category.selectProblem", cateNo);
		}
		
		//문제 작성
		public int ProblemInsert(ProblemVo proVo) {
			System.out.println("ProDao- ProblemInsert");
			
			return sqlSession.insert("category.problemInsert", proVo);
		}
}
