package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {

	@Autowired UserDao userDao;
	
	public int join(UserVo userVo) {
		System.out.println("Service - insert");
		return userDao.insert(userVo);
		
	}
	
	public UserVo login(UserVo userVo) {
		System.out.println("Service - login");
		return userDao.selectUser(userVo);
	}
}
