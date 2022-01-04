package com.gr.ssgb.host.model;

import java.sql.Timestamp;

public class HostVO {
	private int hNo;
	private String hGrade;
	private String hName;
	private String hId;
	private String hPwd;
	private String hNickname;
	private String hBday;
	private String hPhone;
	private String hZipcode;
	private String hAddress;
	private String hAddressDetail;
	private String hAccount;
	private String hBankName;
	private String hFilename;
	private long hFilesize;
	private String hOriginalname;
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
	public String gethPhone() {
		return hPhone;
	}
	public void sethPhone(String hPhone) {
		this.hPhone = hPhone;
	}
	public String gethZipcode() {
		return hZipcode;
	}
	public void sethZipcode(String hZipcode) {
		this.hZipcode = hZipcode;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public String gethAddressDetail() {
		return hAddressDetail;
	}
	public void sethAddressDetail(String hAddressDetail) {
		this.hAddressDetail = hAddressDetail;
	}
	public String gethAccount() {
		return hAccount;
	}
	public void sethAccount(String hAccount) {
		this.hAccount = hAccount;
	}
	public String gethBankName() {
		return hBankName;
	}
	public void sethBankName(String hBankName) {
		this.hBankName = hBankName;
	}
	public String gethFilename() {
		return hFilename;
	}
	public void sethFilename(String hFilename) {
		this.hFilename = hFilename;
	}
	public long gethFilesize() {
		return hFilesize;
	}
	public void sethFilesize(long hFilesize) {
		this.hFilesize = hFilesize;
	}
	public String gethOriginalname() {
		return hOriginalname;
	}
	public void sethOriginalname(String hOriginalname) {
		this.hOriginalname = hOriginalname;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	public String gethNickname() {
		return hNickname;
	}
	public void sethNickname(String hNickname) {
		this.hNickname = hNickname;
	}
	
	public String gethBday() {
		return hBday;
	}
	public void sethBday(String hBday) {
		this.hBday = hBday;
	}
	@Override
	public String toString() {
		return "HostVO [hNo=" + hNo + ", hGrade=" + hGrade + ", hName=" + hName + ", hId=" + hId + ", hPwd=" + hPwd
				+ ", hNickname=" + hNickname + ", hBday=" + hBday + ", hPhone=" + hPhone + ", hZipcode=" + hZipcode
				+ ", hAddress=" + hAddress + ", hAddressDetail=" + hAddressDetail + ", hAccount=" + hAccount
				+ ", hBankName=" + hBankName + ", hFilename=" + hFilename + ", hFilesize=" + hFilesize
				+ ", hOriginalname=" + hOriginalname + ", regdate=" + regdate + "]";
	}
	
	
	
}
