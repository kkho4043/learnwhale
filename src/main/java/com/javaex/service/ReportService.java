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
	

	public Map<String, Object> getList(String url, String type, int joinNo, String keyword, int page, int userNo) {
		Map<String, Object> reMap = new HashMap<String, Object>(7);
		Map<String, Object> joMap = reDao.selJoin(userNo, url);
		System.out.println(joMap);
				
		if("선생님".equals(joMap.get("TYPE"))) { 
			
			if(joinNo==0) {
				
				try{
					joinNo = reDao.selNo(url);
				}catch(NullPointerException e) {
					joinNo = 0;
				}
				reMap.put("joinList", reDao.selStudentList(url, 0));
				//System.out.println("1");
				
			}else {
				reMap.put("joinList", reDao.selStudentList(url, 0));
				//System.out.println("1-1");
			}
			
		}
	
		
		if("학생".equals(joMap.get("TYPE"))) {
			
			if(joinNo==0) {
				joinNo = Integer.parseInt(String.valueOf(joMap.get("JOINNO")));
				
				if(joinNo ==0) {
					reMap.put("joinList", reDao.selStudentList(url, -1));
					//System.out.println("2");
				}
				else {
					reMap.put("joinList", reDao.selStudentList(url, joinNo));
					//System.out.println("3");
				}
				
				
			}else {
				
				reMap.put("joinList", reDao.selStudentList(url, joinNo));
				//System.out.println("4");
			}
		}
		
		
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
		Map<String, Object> paMap = new HashMap<>(5);
		
		paMap.put("startPage", startPage);
		paMap.put("endPage", endPage);
		paMap.put("lastPage", lastPage);
		
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
