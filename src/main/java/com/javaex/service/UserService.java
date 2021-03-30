package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {

	@Autowired
	UserDao userDao;

	public int join(UserVo userVo, MultipartFile file) {
		System.out.println("userService - join");
		// db저정할 정보 수집

		if (file.getSize() > 0) {
			String saveDir = "C:\\javaStudy\\upload";
			// 확장자
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			// 서버 저장 파일 이름
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			// 서버 파일 패스 --> 저장경로
			String filePath = saveDir + "\\" + saveName;
			System.out.println(filePath);
			userVo.setProFile(saveName);
			// 서버 하드디스크 파일 저장
			System.out.println(saveName);
			try {
				byte[] fileData = file.getBytes();
				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bos = new BufferedOutputStream(out);

				bos.write(fileData);
				bos.close();

			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		return userDao.insert(userVo);

	}

	public UserVo login(UserVo userVo) {
		System.out.println("Service - login");
		return userDao.selectUser(userVo);
	}

	public String idcheck(String id) {
		System.out.println("userService idCheck()");
		UserVo userVo = userDao.selectOne(id);
		String result = "";
		if (userVo == null) {
			// 사용할수 있는 아이디
			result = "can";
		} else {
			// 중복 아이디, 사용할수 없는 아이디
			result = "cant";
		}
		return result;
	}
}
