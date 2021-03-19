package com.javaex.vo;

public class JoinUserVo {
	
	private int joinNo, classNo, userNo;
	private String approval, type, joinDate;
	
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
	
	@Override
	public String toString() {
		return "JoinUserVo [joinNo=" + joinNo + ", classNo=" + classNo + ", userNo=" + userNo + ", approval=" + approval
				+ ", type=" + type + ", joinDate=" + joinDate + "]";
	}
	
	
	
}
