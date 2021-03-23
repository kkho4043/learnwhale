package com.javaex.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ReportDao;
import com.javaex.dao.StudentDao;
import com.javaex.vo.ExamVo;

@Service
public class ReportService {

	@Autowired
	private ReportDao reDao;
	@Autowired
	private StudentDao stDao;

	public Map<String, Object> getList(int classNo, String type, int joinNo, String keyword, int page) {

		if (joinNo == 0) {

			joinNo = stDao.selNo(classNo);
		}

		Map<String, Object> reMap = new HashMap<String, Object>(5);
		reMap.put("joinList", reDao.selStudentList(classNo));
		
		int postCnt = 5;
		
		int startNum = (page-1)*postCnt +1;
		int endNum = page*postCnt;
		reMap.put("exList", reDao.selExamList(joinNo, type, keyword, startNum, endNum));
		
		/////////////////////
		int totalPost = reDao.selTotalPost(joinNo, type, keyword);
		int pageCnt = 5;
		
		int lastPage;
		if((totalPost%postCnt)>0) {
			lastPage = (totalPost/postCnt)+1;
		}
		else {
			lastPage = (totalPost/postCnt);
		}
		
		int startPage  = (((page-1)/pageCnt)*pageCnt)+1; 
		int endPage = (startPage+pageCnt)-1;	
		
		endPage = (endPage>lastPage) ? lastPage : endPage; 
		Map<String, Object> paMap = new HashMap<>(3);
		
		paMap.put("startPage", startPage);
		paMap.put("endPage", endPage);
		
		reMap.put("paMap", paMap);
		
		
		
		
		
		
		
		
		
		List<ExamVo> exList = reDao.selAvgList(joinNo);
		
		if(exList.isEmpty()) {
			reMap.put("avgList", exList);
		}
		else {
			
			ArrayList<Integer> quizArr = new ArrayList<>();
			ArrayList<Integer> testArr = new ArrayList<>();
			ArrayList<Integer> homeworkArr = new ArrayList<>();
			
			for(int i=0; i<exList.size(); i++) {
				
				String exType = exList.get(i).getExamType();
				int grade = exList.get(i).getGrade();
				
				if("쪽지시험".equals(exType)) {
					quizArr.add(grade);
				}
				else if("시험".equals(exType)) {
					testArr.add(grade);
				}
				else {
					homeworkArr.add(grade);
				}
			}
			
			int sum= 0;
			for(int i=0; i<exList.size(); i++) {
				sum += exList.get(i).getGrade();
			}
			
			double totalAvg = sum/exList.size();
			
			sum=0;
			for(int i=0; i<quizArr.size(); i++) {
				sum += quizArr.get(i);
			}
			
			double quizAvg = sum/quizArr.size();
			
			
			sum=0;
			for(int i=0; i<testArr.size(); i++) {
				sum += testArr.get(i);
			}
			
			double testAvg = sum/testArr.size();
			
			sum=0;
			for(int i=0; i<homeworkArr.size(); i++) {
				sum += homeworkArr.get(i);
			}
			
			double homeAvg = sum/homeworkArr.size();
			
			double[] avgList = {totalAvg, quizAvg, testAvg, homeAvg}; 
			
			reMap.put("avgList", avgList);
			}
		
		return reMap;
	}

}
