package com.javaex.vo;

public class ChoiceVo {

	private int choiceNo, // 보기 번호
			problemNo, // 문제 번호
			orderNo; // 번호
	private String choiceContent, // 보기 내용
			attachmentFile; // 첨부파일
	
	public ChoiceVo() {
		super();
	}


	public ChoiceVo(int choiceNo, int problemNo, int orderNo, String choiceContent, String attachmentFile) {
		this.choiceNo = choiceNo;
		this.problemNo = problemNo;
		this.orderNo = orderNo;
		this.choiceContent = choiceContent;
		this.attachmentFile = attachmentFile;
	}

	
	public int getChoiceNo() {
		return choiceNo;
	}


	public void setChoiceNo(int choiceNo) {
		this.choiceNo = choiceNo;
	}


	public int getProblemNo() {
		return problemNo;
	}


	public void setProblemNo(int problemNo) {
		this.problemNo = problemNo;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public String getChoiceContent() {
		return choiceContent;
	}


	public void setChoiceContent(String choiceContent) {
		this.choiceContent = choiceContent;
	}


	public String getAttachmentFile() {
		return attachmentFile;
	}


	public void setAttachmentFile(String attachmentFile) {
		this.attachmentFile = attachmentFile;
	}


	@Override
	public String toString() {
		return "ChoiceVo [choiceNo=" + choiceNo + ", problemNo=" + problemNo + ", orderNo=" + orderNo
				+ ", choiceContent=" + choiceContent + ", attachmentFile=" + attachmentFile + "]";
	}

}
