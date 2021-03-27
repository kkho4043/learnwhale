package com.javaex.service;

import java.util.HashMap;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.StudentDao;

@Service
public class StudentService {
	
	@Autowired
	private StudentDao stDao;
	 
	
	public Map<String, Object> getBlogInfo(String url){
		
		return stDao.selBlogInfo(url);
	}
	
	
	 public Map<String, Object> getList(int userNo, String url, int page) {
		 	
		 	//게시물 수
		 	int postCnt = 10;
			
			int startNum = (page-1)*postCnt +1;
			int endNum = page*postCnt;
				
			//페이지 처리
			int totalPost = stDao.selTotalPost(url);
			
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
			
			Map<String, Object> paMap = new HashMap<String, Object>(4);
			
			paMap.put("startPage", startPage);
			paMap.put("endPage", endPage);
			paMap.put("lastPage", lastPage);
			Map<String, Object> stMap = new HashMap<String, Object>(3);
			
			stMap.put("paMap", paMap);
			stMap.put("joinList", stDao.selectList(userNo, url, startNum, endNum));
				
			return stMap;
	 }
	 
	 public int approve(String url, String[] arr, int no) {
		 
		 int[] userNo = new int[arr.length];
		 
		 for(int i=0; i<arr.length; i++) {
			 userNo[i] = Integer.parseInt(arr[i]);
		 }
		 
		 return stDao.updateApprove(url, userNo, no);
	 }
	
	
	 public int waitStatus(String url, String[] arr, int no) {
		 
		 int[] userNo = new int[arr.length];
		 
		 for(int i=0; i<arr.length; i++) {
			 userNo[i] = Integer.parseInt(arr[i]);
		 }
		 
		 return stDao.updateWait(url, userNo, no);
	 }
	 
	 
	 public int delete(String url, String[] arr, int no) {
		 
		 int[] userNo = new int[arr.length];
		 
		 for(int i=0; i<arr.length; i++) {
			 userNo[i] = Integer.parseInt(arr[i]);
		 }
		 
		 return stDao.updateDelete(url, userNo, no);
	 }
	 
}
