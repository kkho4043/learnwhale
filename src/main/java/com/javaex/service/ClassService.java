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
		return classDao.tInsert(classNo, no);
	};

	// 리스트
	public Map<String, Object> list(int no, String search, int crtPage) {
		System.out.println("[classService.list()]");
		int listCnt = 10;
		
		//현재페이지
		//if문 대신에 삼항연산자 사용
		crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
		//crtPage
		
		//시작글 번호 startRnum
		int startRnum = (crtPage -1) * listCnt +1;
		
		//끝글 번호 endRnum
		int endRnum = (startRnum + listCnt) -1;
		
		List<ClassVo> classList = classDao.selectList(no, search, startRnum, endRnum);

		int pageBtnCount=5;
		
		//전체 글갯수 구하기
		int totalCount = classDao.selectTotalCnt(search);
		
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount) * pageBtnCount;
				
		//시작 버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);
	
		//다음버튼 boolean
		boolean next;
		if(endPageBtnNo * listCnt < totalCount) {
			next = true;
		}else {
			next = false;
			endPageBtnNo = (int)Math.ceil(totalCount/(double)listCnt);
		};
		
		//이전버튼 boolean
		boolean prev;
		if(startPageBtnNo != 1) {
			prev = true;
		}else {
			prev = false;
			
		};
		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("classList", classList);
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);
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
