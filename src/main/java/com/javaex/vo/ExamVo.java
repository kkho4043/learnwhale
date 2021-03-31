package com.javaex.vo;

public class ExamVo {
	private int examNo;
	private int classNo;
	private String examTitle;
	private String examType;
	private String time;
	private String startDate;
	private String endDate;
	private String regDate;

	private int solveAmount;
	private int problemAmount; // 문항수
	private int numSubmit; // 체출인원
	private int attendNum; // 참석인원
	private int grade;

	public ExamVo() {
	}

	public ExamVo(int examNo, int classNo, String examTitle, String examType, String time, String startDate,
			String endDate, String regDate, int solveAmount, int problemAmount, int numSubmit, int attendNum,
			int grade) {
		super();
		this.examNo = examNo;
		this.classNo = classNo;
		this.examTitle = examTitle;
		this.examType = examType;
		this.time = time;
		this.startDate = startDate;
		this.endDate = endDate;
		this.regDate = regDate;
		this.solveAmount = solveAmount;
		this.problemAmount = problemAmount;
		this.numSubmit = numSubmit;
		this.attendNum = attendNum;
		this.grade = grade;
	}

	public ExamVo(String examTitle, String examType, String time, String startDate, String endDate) {
		this.examTitle = examTitle;
		this.examType = examType;
		this.time = time;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getExamNo() {
		return examNo;
	}

	public void setExamNo(int examNo) {
		this.examNo = examNo;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public String getExamTitle() {
		return examTitle;
	}

	public void setExamTitle(String examTitle) {
		this.examTitle = examTitle;
	}

	public String getExamType() {
		return examType;
	}

	public void setExamType(String examType) {
		this.examType = examType;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getSolveAmount() {
		return solveAmount;
	}

	public void setSolveAmount(int solveAmount) {
		this.solveAmount = solveAmount;
	}

	public int getProblemAmount() {
		return problemAmount;
	}

	public void setProblemAmount(int problemAmount) {
		this.problemAmount = problemAmount;
	}

	public int getNumSubmit() {
		return numSubmit;
	}

	public void setNumSubmit(int numSubmit) {
		this.numSubmit = numSubmit;
	}

	public int getAttendNum() {
		return attendNum;
	}

	public void setAttendNum(int attendNum) {
		this.attendNum = attendNum;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "ExamVo [examNo=" + examNo + ", classNo=" + classNo + ", examTitle=" + examTitle + ", examType="
				+ examType + ", time=" + time + ", startDate=" + startDate + ", endDate=" + endDate + ", regDate="
				+ regDate + ", solveAmount=" + solveAmount + ", problemAmount=" + problemAmount + ", numSubmit="
				+ numSubmit + ", attendNum=" + attendNum + ", grade=" + grade + "]";
	}
	
	

}
