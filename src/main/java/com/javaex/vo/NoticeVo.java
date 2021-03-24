package com.javaex.vo;

public class NoticeVo {

	int no;      //notice_no 글번호
	int user_no; //user_no 유저넘버
	int join_no;    //가입회원번호
	String title;   //제목 
	String content; //내용 
	int hit;        //조회수
	String reg_date; //등록일
	
	String name;    //이름
	

	//
	public NoticeVo() {	}
	

	public NoticeVo(String title, String content, int no) {
		this.no = no;
		this.title = title;
		this.content = content;
	}

	public NoticeVo(int no, int join_no, String title, String content, int hit, String reg_date, String name) {
		this.no = no;
		this.join_no = join_no;
		this.title = title;
		this.content = content;
		this.hit = hit;
		this.reg_date = reg_date;
		this.name = name;
	}



	//메소드 g/s
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	public int getJoin_no() {
		return join_no;
	}


	public void setJoin_no(int join_no) {
		this.join_no = join_no;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getHit() {
		return hit;
	}


	public void setHit(int hit) {
		this.hit = hit;
	}


	public String getReg_date() {
		return reg_date;
	}


	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "NoticeVo [no=" + no + ", user_no=" + user_no + ", join_no=" + join_no + ", title=" + title
				+ ", content=" + content + ", hit=" + hit + ", reg_date=" + reg_date + ", name=" + name + "]";
	}

	
	
	
	
}
