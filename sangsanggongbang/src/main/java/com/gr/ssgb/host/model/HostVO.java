package com.gr.ssgb.host.model;

import java.sql.Timestamp;

public class HostVO {
	private int hNo;
	private String hGrade;
	private String hName;
	private String hId;
	private String hPwd;
	private String hEmail;
	private String hPhone;
	private String hBusinessNum;
	private String hAddress;
	private Timestamp regdate;
	public int gethNo() {
		return hNo;
	}
	public void sethNo(int hNo) {
		this.hNo = hNo;
	}
	public String gethGrade() {
		return hGrade;
	}
	public void sethGrade(String hGrade) {
		this.hGrade = hGrade;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethId() {
		return hId;
	}
	public void sethId(String hId) {
		this.hId = hId;
	}
	public String gethPwd() {
		return hPwd;
	}
	public void sethPwd(String hPwd) {
		this.hPwd = hPwd;
	}
	public String gethEmail() {
		return hEmail;
	}
	public void sethEmail(String hEmail) {
		this.hEmail = hEmail;
	}
	public String gethPhone() {
		return hPhone;
	}
	public void sethPhone(String hPhone) {
		this.hPhone = hPhone;
	}
	public String gethBusinessNum() {
		return hBusinessNum;
	}
	public void sethBusinessNum(String hBusinessNum) {
		this.hBusinessNum = hBusinessNum;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "HostVO [hNo=" + hNo + ", hGrade=" + hGrade + ", hName=" + hName + ", hId=" + hId + ", hPwd=" + hPwd
				+ ", hEmail=" + hEmail + ", hPhone=" + hPhone + ", hBusinessNum=" + hBusinessNum + ", hAddress="
				+ hAddress + ", regdate=" + regdate + "]";
	}
	
}
