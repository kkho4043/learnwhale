package com.javaex.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ExamDao;
import com.javaex.vo.ChoiceVo;
import com.javaex.vo.ExamVo;

@Service("/BlogBasicService")
public class ExamService {

	@Autowired
	ExamDao examDao;

	public void examinsert() {
		System.out.println("service");
		examDao.examinsert();
	}

	public Map<String, Object> examList(int classNo, int crtPage, String keyward) {

		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int listCnt = 10;
		int startNum = (crtPage - 1) * listCnt + 1;
		int endNum = (crtPage * listCnt);

		// 전체 글 갯수
		int totalCount = examDao.selectTotalCnt(keyward, classNo);
		System.out.println("exam service total = : " + totalCount);

		// 버튼번호
		int pageBtnCount = 5;
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// 다음버튼
		boolean next;
		if (endPageBtnNo * listCnt < totalCount) {
			next = true;
		} else {
			next = false;
			endPageBtnNo = (int) Math.ceil(totalCount / (double) listCnt);
		}

		boolean prev;

		if (startPageBtnNo != 1) {
			prev = true;
		} else {
			prev = false;
		}

		// prev startPageBtnNo endPageBtnNo next

		List<ExamVo> examList = examDao.examList(classNo, keyward, startNum, endNum);

		Map<String, Object> pMap = new HashMap<String, Object>();

		pMap.put("elist", examList);
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);

		return pMap;
	}

	public Map<String, Object> examproList(int examNo , int joinNo,int crtPage) {
		
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int listCnt = 10;
		int startNum = (crtPage - 1) * listCnt + 1;
		int endNum = (crtPage * listCnt);

		// 전체 글 갯수
		int totalCount = examDao.selectproTotalCnt(examNo);
		System.out.println("exam service total = : " + totalCount);

		// 버튼번호
		int pageBtnCount = 5;
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// 다음버튼
		boolean next;
		if (endPageBtnNo * listCnt < totalCount) {
			next = true;
		} else {
			next = false;
			endPageBtnNo = (int) Math.ceil(totalCount / (double) listCnt);
		}

		boolean prev;

		if (startPageBtnNo != 1) {
			prev = true;
		} else {
			prev = false;
		}
		
		
		
			
	
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("eulist", examDao.examuserList(examNo));
		pMap.put("eplist", examDao.examproList(examNo, joinNo , startNum,endNum));
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);
		return pMap;
	}

}
