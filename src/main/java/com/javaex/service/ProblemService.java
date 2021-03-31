package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.ProblemDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.ChoiceVo;
import com.javaex.vo.ProblemVo;

@Service
public class ProblemService {

	@Autowired
	private ProblemDao proDao;

	// 카테고리
	public List<CategoryVo> getCategory(int userNo) {
		System.out.println("CateService- getCategory");

		return proDao.selectCategory(userNo);
	}

	// 메인폴더
	public int addMainFolder(CategoryVo cateVo) {
		System.out.println("CateService- getcateVo");
		return proDao.addMainFolder(cateVo);
	}

	// 서브폴더
	public int addSubFolder(CategoryVo cateVo) {
		System.out.println("CateService- addSubFolder()");
		return proDao.addSubFolder(cateVo);
	}

	// 폴더 수정
	public int updateFolder(CategoryVo cateVo) {
		System.out.println("CateService- updateFolder()");

		return proDao.updateFolder(cateVo);
	}

	// 문제 리스트
	public List<ProblemVo> getProblem(int cateNo) {
		System.out.println("ProblemService- getProblem");

		System.out.println(proDao.selectProblem(cateNo) + "service");

		return proDao.selectProblem(cateNo);
	}

	// 문제 작성
	public void ProblemInsert(MultipartFile file, ProblemVo proVo, String choice, Map<String, Object> map) {
		System.out.println("ProblemService- problemInsert");

		String saveDir = "";
		String exName;
		String saveName;
		String filePath;

		System.out.println("서비스 초이스 :  " + choice);

		if (file.getSize() > 0) {
			// 컨텐츠에 이미지가 있을때


			// db저장할 정보 수집
			saveDir = "C:\\javaStudy\\upload";

			exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			filePath = saveDir + "\\" + saveName;

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
			if(proVo.getAnswer().substring(proVo.getAnswer().length()-1).equals(",")) {
				proVo.setAnswer(proVo.getAnswer().substring(0, proVo.getAnswer().length()-1));
			}
			proDao.ProblemInsert(proVo);

		} else {
			
			proVo.getAnswer().split(",");

			// 이미지가 없을때
			System.out.println("serviceddd" + proVo);
			if(proVo.getAnswer().substring(proVo.getAnswer().length()-1).equals(",")) {
				proVo.setAnswer(proVo.getAnswer().substring(0, proVo.getAnswer().length()-1));
			}
			proDao.ProblemInsert(proVo);
		}

		String[] arr = choice.split(",");
		System.out.println(choice.length());

		if (proVo.getType().equals("객관식")) {
			for (int i = 1; i <= 4; i++) {

				// 보기 1, 2,3,4 의 문자열이 있으면
				if (choice.length() > 3) {
					System.out.println("proservice:" + choice);
					filePath = "";
					proDao.ChoiceInsert(filePath, arr[i - 1], proVo.getProblemNo(), i);
				} else {
					// 이미지가 4개 모두 들어왔다면 여기를 탄다
					file = (MultipartFile) map.get("file" + i);
					System.out.println("exName: " + file.getOriginalFilename());
					exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

					saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

					filePath = saveDir + "\\" + saveName;

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
					proDao.ChoiceInsert(filePath, "", proVo.getProblemNo(), i);
				}

			}
		}

	}

	// 문제 보기
	public ProblemVo Problemview(int proNo) {
		System.out.println("ProblemService- view");

		return proDao.problemView(proNo);
	}

	// 객관식 보기
	public List<ChoiceVo> ChoiceView(int proNo) {
		System.out.println("ChoiceView- view");

		return proDao.choiceView(proNo);
	}

	// 문제 수정
	public void ProblemModify(MultipartFile file, ProblemVo proVo, String choiceContent, String choiceNo, Map<String, Object> map) {
		System.out.println("ProblemService- ProblemModify");
		System.out.println("파일이름" + file.getOriginalFilename());
		String saveDir = "";
		String exName;
		String saveName;
		String filePath;

		System.out.println("서비스 초이스 :  " + choiceContent);

		if (file.getSize() > 0) {
			// 컨텐츠에 이미지가 있을때


			// db저장할 정보 수집
			saveDir = "C:\\javaStudy\\upload";

			exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			filePath = saveDir + "\\" + saveName;

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
			proDao.ProblemModify(proVo);

		} else {

			// 이미지가 없을때
			System.out.println("asdasd" + proVo);
			
			proDao.ProblemModify(proVo);
		}

		String[] choiceArr = choiceContent.split(",");
		String[] choiceNoArr = choiceNo.split(",");
		System.out.println(choiceContent.length());

		if (proVo.getType().equals("객관식")) {
			for (int i = 1; i <= 4; i++) {

				// 보기 1, 2,3,4 의 문자열이 있으면
				if (choiceContent.length() > 3) {
					System.out.println("proservice:" + choiceContent);
					filePath = "";
					proDao.ChoiceModify(filePath, choiceArr[i - 1], choiceNoArr[i - 1], proVo.getProblemNo(), i);
				} else {
					// 이미지가 4개 모두 들어왔다면 여기를 탄다
					file = (MultipartFile) map.get("file" + i);
					System.out.println("exName: " + file.getOriginalFilename());
					exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

					saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

					filePath = saveDir + "\\" + saveName;

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
					proDao.ChoiceModify(filePath, "", "", proVo.getProblemNo(), i);
				}
			}

		}
	}

	public int delete(ProblemVo proVo) {

		return proDao.delete(proVo);
	}

	// 객관식 보기
	public List<CategoryVo> SubCategoryByGroupNo(CategoryVo cateVo) {
		System.out.println("SubCategoryByGroupNo");

		return proDao.SubCategoryByGroupNo(cateVo);
	}
}
