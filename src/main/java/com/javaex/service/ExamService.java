package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ExamDao;
import com.javaex.vo.ExamVo;

@Service("/BlogBasicService")
public class ExamService {

	@Autowired
	ExamDao examDao;


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
	
	public void examgrant(ExamVo examVo,String[] arr) {
		examVo.setStartDate(examVo.getStartDate().replace("T", " "));
		examVo.setEndDate(examVo.getStartDate().replace("T", " "));
		
		examDao.examinsert(examVo);
		
		String split;
		
		for(int i = 0;i < arr.length;i++) {
			split = arr[i];
			String[] splitarr = split.split("/");
			examDao.questioninsert(Integer.parseInt(splitarr[0]), Integer.parseInt(splitarr[1]),i+1);
		}
		
	}
	public Map<String, Object> exammodify(int examNo) {
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		ExamVo examVo = examDao.selectExam(examNo);
		
		examVo.setStartDate(examVo.getStartDate().replace(" ","T"));
		examVo.setEndDate(examVo.getEndDate().replace(" ","T"));
		pMap.put("examVo",examVo);
		
		pMap.put("qList",examDao.selectquestion(examNo));
		
		return pMap;
	}
	
	public void exammodify(ExamVo examVo,String[] arr) {
		
		
		examVo.setStartDate(examVo.getStartDate().replace("T", " "));
		examVo.setEndDate(examVo.getStartDate().replace("T", " "));
		System.out.println(examVo);
		
		examDao.examupdate(examVo);
		
		examDao.qeustiondelete(examVo.getExamNo());
		
		
		String split;
		
		for(int i = 0;i < arr.length;i++) {
			split = arr[i];
			String[] splitarr = split.split("/");
			examDao.questionupdate(examVo.getExamNo(),Integer.parseInt(splitarr[0]), Integer.parseInt(splitarr[1]),i+1);
		}
		
	}
	
	public void exammodify2(ExamVo examVo) {
		System.out.println(examVo);
		examDao.examupdate(examVo);
	}

}
