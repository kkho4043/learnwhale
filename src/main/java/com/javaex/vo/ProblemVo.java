package com.javaex.vo;

public class ProblemVo {

	private int problemNo, cateNo;
	private String type, problemTitle, content, contentImage, description, answer, regDate, choiceContent,
			attachmentFile;

	public ProblemVo(int problemNo, int cateNo, String type, String problemTitle, String content, String contentImage,
			String description, String answer, String regDate, String choiceContent, String attachmentFile,
			String result, int orderNum) {
		this.problemNo = problemNo;
		this.cateNo = cateNo;
		this.type = type;
		this.problemTitle = problemTitle;
		this.content = content;
		this.contentImage = contentImage;
		this.description = description;
		this.answer = answer;
		this.regDate = regDate;
		this.choiceContent = choiceContent;
		this.attachmentFile = attachmentFile;
		this.result = result;
		this.orderNum = orderNum;
	}

	private String result;// 오답여부
	private int orderNum; // 시험 관리 >> 문제리스트 문제순서

	public ProblemVo() {
	}

	public ProblemVo(String type, String problemTitle, String result, int orderNum) {
		this.type = type;
		this.problemTitle = problemTitle;
		this.result = result;
		this.orderNum = orderNum;
	}

	public int getProblemNo() {
		return problemNo;
	}

	public void setProblemNo(int problemNo) {
		this.problemNo = problemNo;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getProblemTitle() {
		return problemTitle;
	}

	public void setProblemTitle(String problemTitle) {
		this.problemTitle = problemTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContentImage() {
		return contentImage;
	}

	public void setContentImage(String contentImage) {
		this.contentImage = contentImage;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	@Override
	public String toString() {
		return "ProblemVo [problemNo=" + problemNo + ", cateNo=" + cateNo + ", type=" + type + ", problemTitle="
				+ problemTitle + ", content=" + content + ", contentImage=" + contentImage + ", description="
				+ description + ", answer=" + answer + ", regDate=" + regDate + ", choiceContent=" + choiceContent
				+ ", attachmentFile=" + attachmentFile + ", result=" + result + ", orderNum=" + orderNum + "]";
	}

	
}
