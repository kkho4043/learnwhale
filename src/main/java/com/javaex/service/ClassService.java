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
		
		ClassVo classVo = classDao.urlcheck(classUrl);
		String result = "";
		
		if (classVo == null) {
			// 사용할수 있는 url
			result = "can";
		} else {
			// 중복url, 사용할 수 없는 url
			result = "can't";
		}
		return result;
	};

	// 반생성
	public int create(ClassVo classVo, MultipartFile file, int no) {

		classVo.setStartDate(classVo.getStartDate().replace("T", " "));
		classVo.getStartDate().replace("T", " ");
		System.out.println(classVo.getStartDate().replace("T", " "));

		classVo.setEndDate(classVo.getEndDate().replace("T", " "));
		classVo.getEndDate().replace("T", " ");

	
		
		// db저정할 정보 수집
		
		if(file.getSize() > 0) {
			String saveDir = "C:\\javaStudy\\upload";
			// 확장자
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			// 서버 저장 파일 이름
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			// 서버 파일 패스 --> 저장경로
			String filePath = saveDir + "\\" + saveName;
			System.out.println(filePath);
			classVo.setLogoFile(saveName);
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
		classDao.classInsert(classVo);
		int classNo = classVo.getClassNo();
		System.out.println("classNo " + classNo);
		System.out.println("no " + no);
		System.out.println(classDao.tInsert(classNo, no));
		return classDao.tInsert(classNo, no);
	};

	// 리스트
	public List<ClassVo> list(int no, String search) {
		System.out.println("[classService.list()]");
		return classDao.selectList(no, search);
	};

	// 수정폼 가져오기
	public ClassVo selectOne(int classNo) {
		System.out.println("[classService.selectOne()]");
		ClassVo classVo= (ClassVo)classDao.selectOne(classNo);
		classVo.setStartDate(classVo.getStartDate().replace(" ", "T"));
		classVo.setEndDate(classVo.getEndDate().replace(" ", "T"));
		System.out.println("수정폼 가져오기"+classVo);
		return classVo;
	}

	// 수정
	public int update(ClassVo classVo) {
		classVo.setStartDate(classVo.getStartDate().replace("T", " "));
		classVo.getStartDate().replace("T", " ");
		System.out.println(classVo.getStartDate().replace("T", " "));
		
		classVo.setEndDate(classVo.getEndDate().replace("T", " "));
		classVo.getEndDate().replace("T", " ");


		return classDao.update(classVo);
		
	}

	// 삭제
	public int remove(int classNo) {
		System.out.println("[classService.remove()]");
		int count = classDao.sCount(classNo);
		System.out.println("학생수 세기" + count);
		System.out.println(classNo);
		if(count == 0) {
			classDao.joinDelete(classNo);
			System.out.println(classNo);
		}else {
			return 1;
		}
		
		return classDao.classDelete(classNo);
		
	}
	
}
