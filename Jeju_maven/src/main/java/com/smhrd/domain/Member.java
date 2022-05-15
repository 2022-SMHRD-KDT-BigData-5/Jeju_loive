package com.smhrd.domain;

public class Member {
	
	private String id;
	private String pw;
	private String name;
	private String tel;
	
	
	
	
	//생성자
		public Member(String id, String pw, String name, String tel) {
			super();
			this.id = id;
			this.pw = pw;
			this.name = name;
			this.tel = tel;
		}
		public Member(String id, String pw) {
			super();
			this.id = id;
			this.pw = pw;
		}
		
	
	//---- getter / setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
	
	
	
	
	

}
