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

@Repository
public class ExamDao {

	@Autowired
	private SqlSession sqlSession;

	public ExamVo examinsert(ExamVo examVo) {
		sqlSession.insert("exam.examinsert",examVo);
		return examVo; 
	}
	public void questioninsert(int problemNo,int point , int order,int examNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("problemNo", problemNo);
		map.put("point", point);
		map.put("order", order);
		map.put("examNo", examNo);
		sqlSession.insert("exam.questioninsert",map);
	}

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
	
	//시험 수정
	public void examupdate(ExamVo examVo) {
		sqlSession.update("exam.examupdate", examVo);
	}
	
	//시험수정시 삭제
	public void qeustiondelete(int examNo) {
		sqlSession.delete("exam.qeustiondelete", examNo);
	}
	
	//시험 수정시 업데이트(입력)
	public void questionupdate(int examNo, int problemNo,int point , int order) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("examNo", examNo);
		map.put("problemNo", problemNo);
		map.put("point", point);
		map.put("order", order);
		sqlSession.insert("exam.questionupdate", map);
	}
	
	public ExamVo examstart(int examNo) {
		
		return sqlSession.selectOne("exam.examstart", examNo);
	}
	public int getAttendance(int joinNo, int examNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("joinNo", joinNo);
		map.put("examNo", examNo);
		return sqlSession.selectOne("exam. getAttendance", map);
	}
	public QuestionVo startquestion(int orderNum) {
		return sqlSession.selectOne("exam.startquestion",orderNum);
	}
	public ProblemVo selectproblem(int problemNo) {
		return sqlSession.selectOne("exam.selectproblem",problemNo);
	}
	public List<ChoiceVo> selectchoice(int problemNo) {
		return sqlSession.selectList("exam.selectchoice",problemNo);
	}
	
	
}
