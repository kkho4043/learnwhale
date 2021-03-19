package com.javaex.vo;

public class ClassVo {
	
	private int classNo;
	private String classUrl, className, logoFile, startDate, endDate, hidden;
	
	
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public String getClassUrl() {
		return classUrl;
	}
	public void setClassUrl(String classUrl) {
		this.classUrl = classUrl;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getLogoFile() {
		return logoFile;
	}
	public void setLogoFile(String logoFile) {
		this.logoFile = logoFile;
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
	public String getHidden() {
		return hidden;
	}
	public void setHidden(String hidden) {
		this.hidden = hidden;
	}
	
	
	@Override
	public String toString() {
		return "ClassVo [classNo=" + classNo + ", classUrl=" + classUrl + ", className=" + className + ", logoFile="
				+ logoFile + ", startDate=" + startDate + ", endDate=" + endDate + ", hidden=" + hidden + "]";
	}
	
	
}
