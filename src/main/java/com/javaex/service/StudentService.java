package com.javaex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.StudentDao;

@Service
public class StudentService {
	
	@Autowired
	private StudentDao stDao;
	
	
	 public List<Map<String, Object>> getList(int classNo) {
	  
	 return stDao.selectList(classNo); 
	 
	 }
	 
	 public int approve(String[] arr) {
		 
		 int[] userNo = new int[arr.length];
		 
		 for(int i=0; i<arr.length; i++) {
			 userNo[i] = Integer.parseInt(arr[i]);
		 }
		 
		 return stDao.updateApprove(userNo);
	 }
	
	
	 public int waitStatus(String[] arr) {
		 
		 int[] userNo = new int[arr.length];
		 
		 for(int i=0; i<arr.length; i++) {
			 userNo[i] = Integer.parseInt(arr[i]);
		 }
		 
		 return stDao.updateWait(userNo);
	 }
	 
	 
	 public int delete(String[] arr) {
		 
		 int[] userNo = new int[arr.length];
		 
		 for(int i=0; i<arr.length; i++) {
			 userNo[i] = Integer.parseInt(arr[i]);
		 }
		 
		 return stDao.updateDelete(userNo);
	 }
	 
}
