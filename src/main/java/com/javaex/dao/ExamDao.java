package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ChoiceVo;
import com.javaex.vo.ExamVo;
import com.javaex.vo.JoinUserVo;
import com.javaex.vo.ProblemVo;
import com.javaex.vo.QuestionVo;
import com.javaex.vo.SolveVo;

@Repository
public class ExamDao {

	@Autowired
	private SqlSession sqlSession;

	// 문제출제 시작
	public ExamVo examinsert(ExamVo examVo) {
		sqlSession.insert("exam.examinsert", examVo);
		return examVo;
	}

	public void questioninsert(int problemNo, int point, int order, int examNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("problemNo", problemNo);
		map.put("point", point);
		map.put("order", order);
		map.put("examNo", examNo);
		sqlSession.insert("exam.questioninsert", map);
	}

	public void insertsolve(int i, int j) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("joinNo", i);
		map.put("examNo", j);
		sqlSession.insert("exam.insertsolve", map);
	}
	// 문제출제 끝

	public List<ExamVo> examList(int classNo, String keyward, int startNum, int endNum) {
		System.out.println("[examDao.examList]");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("classNo", classNo);

		map.put("keyward", keyward);
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		return sqlSession.selectList("exam.examList", map);
	}

	public int selectTotalCnt(String keyward, int classNo) {

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("classNo", classNo);
		map.put("keyward", keyward);
		try {
			return sqlSession.selectOne("exam.selectTotalCnt", map);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	public int selectproTotalCnt(int examNo) {

		try {
			return sqlSession.selectOne("exam.selectproTotalCnt", examNo);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return 0;

	}

	public List<JoinUserVo> examuserList(int examNo) {
		return sqlSession.selectList("exam.examuserlist", examNo);
	}

	public List<ProblemVo> examproList(int examNo, int joinNo, int startNum, int endNum) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("joinNo", joinNo);
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		return sqlSession.selectList("exam.examprolist", map);
	}

	public ExamVo selectExam(int examNo) {
		return sqlSession.selectOne("exam.selectexam", examNo);
	}

	public List<QuestionVo> selectquestion(int examNo) {
		return sqlSession.selectList("exam.selectquestion", examNo);
	}

	// 시험 수정
	public void examupdate(ExamVo examVo) {
		sqlSession.update("exam.examupdate", examVo);
	}

	// 시험수정시 삭제
	public void qeustiondelete(int examNo) {
		sqlSession.delete("exam.qeustiondelete", examNo);
	}
	//시험수정시 솔브 삭제
	public void solvedelete(int examNo) {
		sqlSession.delete("exam.solvedelete", examNo);
	}

	// 시험 수정시 업데이트(입력)
	public void questionupdate(int examNo, int problemNo, int point, int order) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("problemNo", problemNo);
		map.put("point", point);
		map.put("order", order);
		sqlSession.insert("exam.questionupdate", map);
	}

	public ExamVo examstart(int examNo,int joinNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("joinNo", joinNo);
		return sqlSession.selectOne("exam.examstart", map);
	}

	public int getAttendance(int joinNo, int examNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("joinNo", joinNo);
		map.put("examNo", examNo);
		return sqlSession.selectOne("exam.getAttendance", map);
	}

	// 문제풀기 시작
	public QuestionVo startquestion(int orderNum, int examNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderNum", orderNum);
		map.put("examNo", examNo);
		return sqlSession.selectOne("exam.startquestion", map);
	}

	public ProblemVo selectproblem(int problemNo) {
		return sqlSession.selectOne("exam.selectproblem", problemNo);
	}

	public List<ChoiceVo> selectchoice(int problemNo) {
		return sqlSession.selectList("exam.selectchoice", problemNo);
	}

	public List<Integer> selectjusers(int classNo) {
		return sqlSession.selectList("exam.selectjusers", classNo);
	}

	public List<Integer> selectsquestion(int examNo) {
		return sqlSession.selectList("exam.selectsquestion", examNo);
	}
	// 문제풀기 끝

	// 정답입력
	public void updatesolve(QuestionVo questionVo, SolveVo solveVo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderNum", questionVo.getOrderNum());
		map.put("examNo", questionVo.getExamNo());
		
		map.put("joinNo", solveVo.getJoinNo());
		map.put("answer", solveVo.getSubmitAnswer());
		sqlSession.update("exam.updateSolve", map);
	}
	//파일 입력
	public void updatefile(QuestionVo questionVo, SolveVo solveVo, String saveName) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderNum", questionVo.getOrderNum());
		map.put("examNo", questionVo.getExamNo());
		
		map.put("joinNo", solveVo.getJoinNo());
		map.put("saveName", saveName);		
		sqlSession.update("exam.updatefSolve", map);
	}

	public String selectanswer(int examNo, int orderNum, int joinNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("orderNum", orderNum);
		map.put("joinNo", joinNo);
		return sqlSession.selectOne("exam.selectanswer", map);
	}

	public void examfinish(int joinNo, int examNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("joinNo", joinNo);
		sqlSession.update("exam.examfinish", map);
		sqlSession.update("exam.Autoscoring", map);
	}

	public int getpoint(int examNo, int orderNum, int joinNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("orderNum", orderNum);
		map.put("joinNo", joinNo);
		
		if(sqlSession.selectOne("exam.getpoint", map) == null) {
			return 0;
		}
		return sqlSession.selectOne("exam.getpoint", map);
	}

	public int grantpoint(int examNo, int orderNum, int joinNo,int point) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("orderNum", orderNum);
		map.put("joinNo", joinNo);
		map.put("point", point);
	
		return sqlSession.update("exam.grantpoint", map);
	}

	public int examsolvecount(int examNo, int joinNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("joinNo", joinNo);
		return sqlSession.selectOne("exam.examsolvecount", map);
	}
	
	public List<QuestionVo> examsolveList(int examNo, int joinNo,int startNum ,int endNum) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("examNo", examNo);
		map.put("joinNo", joinNo);
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		System.out.println(map.toString());
		return sqlSession.selectList("exam.examsolveList", map);
	}
	//시험 리스트에 학생이 있는지
	public int getsolve(int joinNo, int examNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("joinNo", joinNo);
		return sqlSession.selectOne("exam.getsolve", map);
	}
	//시험이 대기중일 경우
	public int getsolvetime(int examNo) {
		return sqlSession.selectOne("exam.getsolvetime", examNo);
	}
	
	
	//전체 채점
	public int allscoring(int examNo, int joinNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("joinNo", joinNo);
		return sqlSession.update("exam.allscoring", map);
	}
	
	//시간이 지나면 0점처리 채점
	public void endtimeexam() {
		sqlSession.update("exam.endtimeexam");
	}
	
	
	//수정시 푼인원이 있는지
	public int exammodifywhere(int examNo) {
		
		return sqlSession.selectOne("exam.exammodifywhere", examNo);
	}

	

}