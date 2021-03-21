package com.javaex.vo;

public class ProblemVo {

	private int problemNo, cateNo;
	private String type, problemTitle, content, contentImage, description, answer, regDate;
	
	
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
	
	@Override
	public String toString() {
		return "ProblemVo [problemNo=" + problemNo + ", cateNo=" + cateNo + ", type=" + type + ", problemTitle="
				+ problemTitle + ", content=" + content + ", contentImage=" + contentImage + ", description="
				+ description + ", answer=" + answer + ", regDate=" + regDate + "]";
	}
	
	
	
	
}
