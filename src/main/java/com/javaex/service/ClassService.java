package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.ClassDao;
import com.javaex.vo.ClassVo;
import com.javaex.vo.UserVo;

@Service
public class ClassService {

	@Autowired
	private ClassDao classDao;

	// 반생성 url 체크
	public String urlcheck(String classUrl) {

		ClassVo classVo = classDao.selectOne(classUrl);
		String result = "";

		if (classVo == null) {
			// 사용할수 있는 url
			result = "can";
		} else {
			// 중복url, 사용할 수 없는 url
			result = "cant";
		}
		return result;
	};

	// 반생성
	public int create(ClassVo classVo, MultipartFile file, int no) {
		System.out.println("[classService.create()]");

		classVo.setStartDate(classVo.getStartDate().replace("T", " "));
		classVo.getStartDate().replace("T", " ");
		System.out.println(classVo.getStartDate().replace("T", " "));

		classVo.setEndDate(classVo.getEndDate().replace("T", " "));
		classVo.getEndDate().replace("T", " ");

		System.out.println("파일이름" + file.getOriginalFilename());
		
		// db저정할 정보 수집
		String saveDir = "C:\\javaStudy\\upload";

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

		// 서버 저장 파일 이름
		String saveName = System.currentTimeMillis()+UUID.randomUUID().toString() + exName;

		// 서버 파일 패스 --> 저장경로
		String filePath = saveDir + "\\" + saveName;
		
		classVo.setLogoFile(saveName);
		// 서버 하드디스크 파일 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bos = new BufferedOutputStream(out);
			
			bos.write(fileData);
			bos.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		classDao.classInsert(classVo);
		int classNo = classVo.getClassNo();
		System.out.println("classNo " + classNo);
		System.out.println("no "+ no);
		return classDao.tInsert(classNo, no);
	};

	// 리스트
	public List<ClassVo> list(int no, String search) {
		System.out.println("[classService.list()]");
		return classDao.selectList(no, search);
	};
	
	//수정폼 가져오기
	public ClassVo selectOne(int classNo) {
		return classDao.selectOne(classNo);
	}
	
	//수정
	public int update(ClassVo classVo) {
		classVo.setStartDate(classVo.getStartDate().replace("T", " "));
		classVo.getStartDate().replace("T", " ");
		System.out.println(classVo.getStartDate().replace("T", " "));

		classVo.setEndDate(classVo.getEndDate().replace("T", " "));
		classVo.getEndDate().replace("T", " ");
		return classDao.update(classVo);
	}

}
