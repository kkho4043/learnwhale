package com.javaex.vo;

public class ProblemVo {

	private int problemNo, cateNo, choiceNo;
	private String type, problemTitle, content, contentImage, description, answer, regDate, choiceContent, attachmentFile, orderNo;
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
	public int getChoiceNo() {
		return choiceNo;
	}
	public void setChoiceNo(int choiceNo) {
		this.choiceNo = choiceNo;
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
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	@Override
	public String toString() {
		return "ProblemVo [problemNo=" + problemNo + ", cateNo=" + cateNo + ", choiceNo=" + choiceNo + ", type=" + type
				+ ", problemTitle=" + problemTitle + ", content=" + content + ", contentImage=" + contentImage
				+ ", description=" + description + ", answer=" + answer + ", regDate=" + regDate + ", choiceContent="
				+ choiceContent + ", attachmentFile=" + attachmentFile + ", orderNo=" + orderNo + "]";
	}
	
	
	
	
}
