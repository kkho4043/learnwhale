package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.ClassDao;
import com.javaex.vo.ClassVo;

@Service
public class ClassService {

	@Autowired
	private ClassDao classDao;

	// 반생성 url 체크
	public String urlcheck(String classUrl) {
		System.out.println("[classService.urlcheck()]");

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
	public int create(ClassVo classVo, MultipartFile file) {
		System.out.println("[classService.create()]");

		classVo.setStartDate(classVo.getStartDate().replace("T", " "));
		classVo.getStartDate().replace("T", " ");
		System.out.println(classVo.getStartDate().replace("T", " "));

		classVo.setEndDate(classVo.getEndDate().replace("T", " "));
		classVo.getEndDate().replace("T", " ");

		// db저정할 정보 수집
		String saveDir = "C:\\javaStudy\\upload";

		// 오리지널 파일이름
		String orgName = file.getOriginalFilename();
		System.out.println("orgName:" + orgName);

		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));
		System.out.println("exName:" + exName);

		// 서버 저장 파일 이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("savaName:" + saveName);

		// 서버 파일 패스 --> 저장경로
		String filePath = saveDir + "\\" + saveName;
		System.out.println("filePath:" + filePath);

		classVo.setLogoFile(saveName);
		
		// 파일 사이즈
		long fileSize = file.getSize();
		System.out.println("fileSize:" + fileSize);

		
		
		// 서버 하드디스크 파일 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bos = new BufferedOutputStream(out);

			bos.write(fileData);
			bos.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return classDao.insert(classVo, filePath);
	};

	// 리스트
	public List<ClassVo> list() {
		System.out.println("[classService.list()]");
		return classDao.selectList();
	};

}
