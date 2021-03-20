package com.javaex.vo;

public class ExamVo {
	
	private int examNo, classNo;
	private String examTitle, examType, time, startDate, endDate, examRegDate;
	
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
	public String getExamRegDate() {
		return examRegDate;
	}
	public void setExamRegDate(String examRegDate) {
		this.examRegDate = examRegDate;
	}
	
	@Override
	public String toString() {
		return "ExamVo [examNo=" + examNo + ", classNo=" + classNo + ", examTitle=" + examTitle + ", examType="
				+ examType + ", time=" + time + ", startDate=" + startDate + ", endDate=" + endDate + ", examRegDate="
				+ examRegDate + "]";
	}
	
	
}
