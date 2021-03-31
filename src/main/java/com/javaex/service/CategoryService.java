package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.CategoryDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.ProblemVo;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryDao caDao;
	
	public List<ProblemVo> getProblem(int cateNo) {
	
		return caDao.selectProblem(cateNo);
	}
	
	
	public int delete(int cateNo) {
		
		return caDao.deleteFolder(cateNo);
	}
	
	
	public List<CategoryVo> getCategory(int userNo) {
		System.out.println("CateService- getCategory");

		return caDao.selectCategory(userNo);
	}

	// 메인폴더
	public int addMainFolder(CategoryVo cateVo) {
		System.out.println("CateService- getcateVo");
		return caDao.addMainFolder(cateVo);
	}

	// 서브폴더
	public int addSubFolder(CategoryVo cateVo) {
		System.out.println("CateService- addSubFolder()");
		return caDao.addSubFolder(cateVo);
	}

	// 폴더 수정
	public int updateFolder(CategoryVo cateVo) {
		System.out.println("CateService- updateFolder()");

		return caDao.updateFolder(cateVo);
	}

	// 문제 리스트
	public List<ProblemVo> getProblems(int cateNo) {
		System.out.println("ProblemService- getProblem");

		System.out.println(caDao.selectProblem(cateNo) + "service");

		return caDao.selectProblem(cateNo);
	}
	
}
