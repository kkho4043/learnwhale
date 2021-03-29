package com.javaex.vo;

public class SolveVo {
	
	private int solveNo, joinNo, questionNo;
	private String submitAnswer, attachmentFile, mypoint, status;
	
	
	
	public SolveVo() {
		super();
	}
	
	public SolveVo(int solveNo, int joinNo, int questionNo, String submitAnswer, String attachmentFile, String mypoint,
			String status) {
		super();
		this.solveNo = solveNo;
		this.joinNo = joinNo;
		this.questionNo = questionNo;
		this.submitAnswer = submitAnswer;
		this.attachmentFile = attachmentFile;
		this.mypoint = mypoint;
		this.status = status;
	}

	public int getSolveNo() {
		return solveNo;
	}
	public void setSolveNo(int solveNo) {
		this.solveNo = solveNo;
	}
	public int getJoinNo() {
		return joinNo;
	}
	public void setJoinNo(int joinNo) {
		this.joinNo = joinNo;
	}
	public int getQuestionNo() {
		return questionNo;
	}
	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}
	public String getSubmitAnswer() {
		return submitAnswer;
	}
	public void setSubmitAnswer(String submitAnswer) {
		this.submitAnswer = submitAnswer;
	}
	public String getAttachmentFile() {
		return attachmentFile;
	}
	public void setAttachmentFile(String attachmentFile) {
		this.attachmentFile = attachmentFile;
	}
	public String getMypoint() {
		return mypoint;
	}
	public void setMypoint(String mypoint) {
		this.mypoint = mypoint;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "SolveVo [solveNo=" + solveNo + ", joinNo=" + joinNo + ", questionNo=" + questionNo + ", submitAnswer="
				+ submitAnswer + ", attachmentFile=" + attachmentFile + ", mypoint=" + mypoint + ", status=" + status
				+ "]";
	}
	
	
}
