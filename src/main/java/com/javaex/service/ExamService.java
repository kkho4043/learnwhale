package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.BanmainDao;
import com.javaex.dao.ClassDao;
import com.javaex.dao.ExamDao;
import com.javaex.vo.ChoiceVo;
import com.javaex.vo.ExamVo;
import com.javaex.vo.JoinUserVo;
import com.javaex.vo.ProblemVo;
import com.javaex.vo.QuestionVo;
import com.javaex.vo.SolveVo;
import com.javaex.vo.UserVo;

@Service("/BlogBasicService")
public class ExamService {

	@Autowired
	ExamDao examDao;

	@Autowired
	ClassDao classDao;

	@Autowired
	BanmainDao banmainDao;

	// 문제 리스트
	public Map<String, Object> examList(String url, int crtPage, String keyward) {
		
		int classNo = classDao.getclassNo(url);

		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int listCnt = 10;
		int startNum = (crtPage - 1) * listCnt + 1;
		int endNum = (crtPage * listCnt);

		// 전체 글 갯수
		int totalCount = examDao.selectTotalCnt(keyward, classNo);
		System.out.println("exam service total = : " + totalCount);

		// 버튼번호
		int pageBtnCount = 5;
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// 다음버튼
		boolean next;
		if (endPageBtnNo * listCnt < totalCount) {
			next = true;
		} else {
			next = false;
			endPageBtnNo = (int) Math.ceil(totalCount / (double) listCnt);
		}

		boolean prev;

		if (startPageBtnNo != 1) {
			prev = true;
		} else {
			prev = false;
		}

		// prev startPageBtnNo endPageBtnNo next

		List<ExamVo> examList = examDao.examList(classNo, keyward, startNum, endNum);

		Map<String, Object> pMap = new HashMap<String, Object>();

		pMap.put("elist", examList);
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);

		return pMap;
	}

	// 시험클릭시 문제 리스트
	public Map<String, Object> examproList(int examNo, int joinNo, int crtPage) {

		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		int listCnt = 10;
		int startNum = (crtPage - 1) * listCnt + 1;
		int endNum = (crtPage * listCnt);

		// 전체 글 갯수
		int totalCount = examDao.selectproTotalCnt(examNo);
		System.out.println("exam service total = : " + totalCount);

		// 버튼번호
		int pageBtnCount = 5;
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// 다음버튼
		boolean next;
		if (endPageBtnNo * listCnt < totalCount) {
			next = true;
		} else {
			next = false;
			endPageBtnNo = (int) Math.ceil(totalCount / (double) listCnt);
		}

		boolean prev;

		if (startPageBtnNo != 1) {
			prev = true;
		} else {
			prev = false;
		}

		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("eulist", examDao.examuserList(examNo));
		pMap.put("eplist", examDao.examproList(examNo, joinNo, startNum, endNum));
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);
		return pMap;
	}

	// 시험 출제
	public void examgrant(String url, ExamVo examVo, String[] arr) {
		examVo.setStartDate(examVo.getStartDate().replace("T", " "));
		examVo.setEndDate(examVo.getStartDate().replace("T", " "));
		int classNo = classDao.getclassNo(url);

		examVo.setClassNo(classNo);
		examVo = examDao.examinsert(examVo);

		int examNo = examVo.getExamNo();
		String split;

		for (int i = 0; i < arr.length; i++) {
			split = arr[i];
			String[] splitarr = split.split("/");
			examDao.questioninsert(Integer.parseInt(splitarr[0]), Integer.parseInt(splitarr[1]), i + 1, examNo);
		}

		List<Integer> userarr = examDao.selectjusers(classNo);

		List<Integer> squestionarr = examDao.selectsquestion(examNo);

		for (int i = 0; i < userarr.size(); i++) {
			for (int j = 0; j < squestionarr.size(); j++) {
				examDao.insertsolve(userarr.get(i), squestionarr.get(j));
			}
		}
	}

	// 시험 수정
	public Map<String, Object> exammodify(int examNo) {

		Map<String, Object> pMap = new HashMap<String, Object>();
		ExamVo examVo = examDao.selectExam(examNo);

		examVo.setStartDate(examVo.getStartDate().replace(" ", "T"));
		examVo.setEndDate(examVo.getEndDate().replace(" ", "T"));
		pMap.put("examVo", examVo);

		pMap.put("qList", examDao.selectquestion(examNo));

		return pMap;
	}

	public void exammodify(ExamVo examVo, String[] arr) {

		examVo.setStartDate(examVo.getStartDate().replace("T", " "));
		examVo.setEndDate(examVo.getStartDate().replace("T", " "));
		System.out.println(examVo);

		examDao.examupdate(examVo);

		examDao.qeustiondelete(examVo.getExamNo());

		String split;

		for (int i = 0; i < arr.length; i++) {
			split = arr[i];
			String[] splitarr = split.split("/");
			examDao.questionupdate(examVo.getExamNo(), Integer.parseInt(splitarr[0]), Integer.parseInt(splitarr[1]),
					i + 1);
		}

	}

	// 시험 수정 2
	public void exammodify2(ExamVo examVo) {
		System.out.println(examVo);
		examDao.examupdate(examVo);
	}

	public String clicktitle(String url, int examNo, HttpSession session, int joinNo) {

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int userNo = userVo.getNo();
		JoinUserVo jvo = banmainDao.selectuserInfo(url, userNo);

		if (jvo.getType().equals("선생님")) { // 선생님일때
			System.out.println("선생님");
			return "/problemlist?examNo=" + examNo;

		} else {
			// 학생일때
			System.out.println("학생");
			int flag = examDao.getAttendance(jvo.getJoinNo(), examNo);
			if (flag > 0) { // 문제를 풀었을때
				System.out.println("문제를 풀었을때");
				return "/problemlist?examNo=" + examNo + "&joinNo=" + joinNo;
			} else {
				System.out.println("문제를 안풀었을때");
				return "examstart?examNo=" + examNo;
			}

		}

	}

	public ExamVo examstart(int examNo) {
		return examDao.examstart(examNo);
	}

	public Map<String, Object> examsolve(int examNo, int orderNum) {
		Map<String, Object> Map = new HashMap<String, Object>();

		ExamVo examVo = examDao.examstart(examNo);
		Map.put("examVo", examVo);

		QuestionVo qeustionVo = examDao.startquestion(orderNum, examNo);
		qeustionVo.setOrderNum(orderNum);
		Map.put("qeustionVo", qeustionVo);

		ProblemVo problemVo = examDao.selectproblem(qeustionVo.getProblemNo());
		Map.put("problemVo", problemVo);

		if (problemVo.getType().equals("객관식")) { // 객관식 보기
			List<ChoiceVo> cList = examDao.selectchoice(qeustionVo.getProblemNo());
			Map.put("cList", cList);
		}

		if (examDao.startquestion(orderNum + 1, examNo) == null) {
			Map.put("endsolve", "endsolve");
		}

		return Map;

	}

	public void insertanswer(QuestionVo questionVo, SolveVo solveVo) {
		examDao.updatesolve(questionVo, solveVo);
	}

	public void insertFile(QuestionVo questionVo, SolveVo solveVo, MultipartFile file) {
		String saveDir = "C:\\javaStudy\\upload";
		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

		// 서버 저장 파일 이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

		// 서버 파일 패스 --> 저장경로
		String filePath = saveDir + "\\" + saveName;
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

		examDao.updatefile(questionVo, solveVo, saveName);

	}

	public String selectanswer(int examNo, int orderNum, int joinNo) {
		System.out.println(examDao.selectanswer(examNo, orderNum, joinNo));
		return examDao.selectanswer(examNo, orderNum, joinNo);
	}

	// 시험 종료
	public void examfinish(int joinNo, int examNo) {
		examDao.examfinish(joinNo, examNo);

	}

	public int getpoint(int examNo, int orderNum, int joinNo) {
		return examDao.getpoint(examNo, orderNum, joinNo);
	}

	public int grantpoint(int examNo, int orderNum, int joinNo, int point) {
		return examDao.grantpoint(examNo, orderNum, joinNo, point);

	}

	public Map<String, Object> examsolvepaging(int examNo, int orderNum, int joinNo) {
		System.out.println("받을때"+orderNum);
		//전체 글 갯수
		int count = examDao.examsolvecount(examNo,joinNo);
			System.out.println("글갯수는 "+count);
		int startNum = 1;
		int endNum = 9;
		
		
		boolean next = true;
		boolean prev = true;
		
		
		if(orderNum >= 6) {
			startNum = orderNum - 4;
			endNum = startNum + 8;
			if(endNum > count) {
				startNum -=(endNum - count); 
				endNum = count;
			}
		}
		
		if(count < 10) {
			startNum = 1;
			endNum = count;
		}
		
		if(endNum == count) {
			next = false;
			orderNum = count - 4;
		}
		
		if(orderNum < 6) {
			prev = false;
		}
		
			
		
		List<QuestionVo> qList = examDao.examsolveList(examNo ,joinNo,startNum ,endNum);
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		System.out.println(qList);
		pMap.put("qList", qList);
		
		pMap.put("next", next);
		pMap.put("prev", prev);
		System.out.println("넣어줄때"+orderNum);
		pMap.put("thisoderNum", orderNum);
		return pMap;
		
		
		
		

	}

	

}
