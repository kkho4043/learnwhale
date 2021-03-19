package com.javaex.vo;

public class QuestionVo {
	
	private int questionNo, examNo, problemNo, point, orderNum;

	public int getQuestionNo() {
		return questionNo;
	}

	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}

	public int getExamNo() {
		return examNo;
	}

	public void setExamNo(int examNo) {
		this.examNo = examNo;
	}

	public int getProblemNo() {
		return problemNo;
	}

	public void setProblemNo(int problemNo) {
		this.problemNo = problemNo;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	@Override
	public String toString() {
		return "QuestionVo [questionNo=" + questionNo + ", examNo=" + examNo + ", problemNo=" + problemNo + ", point="
				+ point + ", orderNum=" + orderNum + "]";
	}
	
	
}
