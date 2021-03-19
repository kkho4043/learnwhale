package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;

@Repository
public class ProblemDao {
		
		@Autowired
		private SqlSession sqlSession;
		
		public List<CategoryVo>selectCategory(int userNo) {
			System.out.println("CateDao- getCategory");
			
			return sqlSession.selectList("category.selectCategory", userNo);
		}
		
		public int addMainFolder(CategoryVo cateVo) {
			System.out.println("CateDao- getcateVo");
			return sqlSession.insert("category.addMainFolder", cateVo);
		}
		
}
