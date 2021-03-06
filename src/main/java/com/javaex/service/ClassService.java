package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
			System.out.println("1111111111111111111111"+exName);
			// 서버 저장 파일 이름
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			System.out.println("222222222222222222222222222"+saveName);	
			// 서버 파일 패스 --> 저장경로
			String filePath = saveDir + "\\" + saveName;
			System.out.println("3333333333333333333"+filePath);
			classVo.setLogoFile(saveName);
			// 서버 하드디스크 파일 저장
			System.out.println("4444444444444444444444"+saveName);
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
		return classDao.tInsert(classNo, no);
	};

	// 리스트
	public Map<String, Object> list(int no, String search, int page) {
		System.out.println("[classService.list()]");
		int postCnt = 10;
		
		int startRnum = (page-1)*postCnt +1;
		int endRnum = page*postCnt;

		int pageCnt = 5;
		
		//전체 글갯수 구하기
		int totalCount = classDao.selectTotalCnt(search, no);
		
		int lastPage;
		if((totalCount%postCnt)>0) {
			lastPage = (totalCount/postCnt)+1;
		}
		else {
			lastPage = (totalCount/postCnt);
		}
		
		int startPage  = (((page-1)/pageCnt)*pageCnt)+1; 
		int endPage = (startPage+pageCnt)-1;	
		
		endPage = (endPage>lastPage) ? lastPage : endPage;
	
		List<ClassVo> classList = classDao.selectList(no, search, startRnum, endRnum);
		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("classList", classList);
		pMap.put("endPage", endPage);
		pMap.put("startPage", startPage);
		pMap.put("lastPage", lastPage);
	
		return pMap;
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
	public int update(ClassVo classVo, MultipartFile file) {
		classVo.setStartDate(classVo.getStartDate().replace("T", " "));
		classVo.getStartDate().replace("T", " ");
		System.out.println(classVo.getStartDate().replace("T", " "));
		
		classVo.setEndDate(classVo.getEndDate().replace("T", " "));
		classVo.getEndDate().replace("T", " ");
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
		

		return classDao.update(classVo);
		
	}

	// 삭제
	public int remove(int classNo) {
		System.out.println("[classService.remove()]");
		int count = classDao.sCount(classNo);
		
		if(count == 0) {
			classDao.joinDelete(classNo);
		}else {
			return -1;
		}
		
		return classDao.classDelete(classNo);
		
	}
	
}
