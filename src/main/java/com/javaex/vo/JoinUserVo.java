package com.javaex.vo;

public class JoinUserVo {

	private int joinNo, classNo, userNo;
	private String approval, type, joinDate;

	private String username; // 시험관리 리스트 시 사용
	private String result;

	public JoinUserVo() {
	}

	public JoinUserVo(int joinNo, String username, String result) {// 시험관리 리스트 시 사용
		this.joinNo = joinNo;
		this.username = username;
		this.result = result;
	}

	public int getJoinNo() {
		return joinNo;
	}

	public void setJoinNo(int joinNo) {
		this.joinNo = joinNo;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getApproval() {
		return approval;
	}

	public void setApproval(String approval) {
		this.approval = approval;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "JoinUserVo [joinNo=" + joinNo + ", classNo=" + classNo + ", userNo=" + userNo + ", approval=" + approval
				+ ", type=" + type + ", joinDate=" + joinDate + "]";
	}

}
