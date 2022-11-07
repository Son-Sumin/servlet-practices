package com.bitacademy.guestbook.vo;

public class GuestbookVo {
	private int index;
	private String name;
	private String password;
	private String contents;
	private String reg_date;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
		index++;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}
