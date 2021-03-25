package com.javaex.vo;

public class ClassVo {

	private int classNo, total, approval;
	private String classUrl, className, logoFile, startDate, endDate, hidden, state;

	public ClassVo() {
		super();
	}

	public ClassVo(int classNo, int total, int approval, String classUrl, String className, String logoFile,
			String startDate, String endDate, String hidden, String state) {
		super();
		this.classNo = classNo;
		this.total = total;
		this.approval = approval;
		this.classUrl = classUrl;
		this.className = className;
		this.logoFile = logoFile;
		this.startDate = startDate;
		this.endDate = endDate;
		this.hidden = hidden;
		this.state = state;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getApproval() {
		return approval;
	}

	public void setApproval(int approval) {
		this.approval = approval;
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "ClassVo [classNo=" + classNo + ", total=" + total + ", approval=" + approval + ", classUrl=" + classUrl
				+ ", className=" + className + ", logoFile=" + logoFile + ", startDate=" + startDate + ", endDate="
				+ endDate + ", hidden=" + hidden + ", state=" + state + "]";
	}

	
	
	

	

	

}
