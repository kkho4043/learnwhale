package com.javaex.vo;

public class UserVo {

	private int no; // 유저번호
	private String id; // 아이디
	private String password; // 비밀번호
	private String name; // 이름
	private String email; // 이메일
	private String phoneNum; // 핸드폰 번호
	private String proFile; //프로필 사진 --> 블로그 에서 씀


	public UserVo() {
		super();
	}


	public UserVo(int no, String id, String password, String name, String email, String phoneNum, String proFile) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phoneNum = phoneNum;
		this.proFile = proFile;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhoneNum() {
		return phoneNum;
	}


	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}


	public String getProFile() {
		return proFile;
	}


	public void setProFile(String proFile) {
		this.proFile = proFile;
	}


	@Override
	public String toString() {
		return "UserVo [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", phoneNum=" + phoneNum + ", proFile=" + proFile + "]";
	}

	
}
