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

import com.javaex.dao.ProblemDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.ProblemVo;

@Service
public class ProblemService {
	
	@Autowired
	private  ProblemDao proDao;
		
		//카테고리
		public List<CategoryVo>getCategory(int userNo) {
			System.out.println("CateService- getCategory");
			
			return proDao.selectCategory(userNo);
		}
		
		//메인폴더
		public int addMainFolder(CategoryVo cateVo) {
			System.out.println("CateService- getcateVo");
			return proDao.addMainFolder(cateVo);
		}
		
		//서브폴더
		public int addSubFolder(CategoryVo cateVo) {
			System.out.println("CateService- addSubFolder()");
			return proDao.addSubFolder(cateVo);
		}
		
		//문제 리스트
		public List<ProblemVo> getProblem(int cateNo){
			System.out.println("ProblemService- getProblem");
			
			return proDao.selectProblem(cateNo);
		}
		
		//문제 작성
		public int ProblemInsert(MultipartFile file,ProblemVo proVo) {
			System.out.println("ProblemService- problemInsert");
			System.out.println(file.getOriginalFilename());
			
			//db저장할 정보 수집
			String saveDir = "C:\\javaStudy\\upload";
			
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			
			String saveName = System.currentTimeMillis()+UUID.randomUUID().toString() + exName;
			
			String filePath = saveDir + "\\" + saveName;
			
			proVo.setContentImage(saveName);
			
			try {
				byte[] fileData = file.getBytes();
				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bos = new BufferedOutputStream(out);
				
				bos.write(fileData);
				bos.close();
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return proDao.ProblemInsert(proVo);
		}
}
	
	

