package com.gr.ssgb.memberInquiry.model;

import java.sql.Timestamp;

public class BanVO {
	private int	bno; // 제한번호
	private int	hno; // 호스트번호
	private int mNo; // 개인회원번호
	private String bcs; // 제한사유분류
	private	String bc; // 상세내용
	private Timestamp regdate;
	
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getBcs() {
		return bcs;
	}
	public void setBcs(String bcs) {
		this.bcs = bcs;
	}
	public String getBc() {
		return bc;
	}
	public void setBc(String bc) {
		this.bc = bc;
	}
	@Override
	public String toString() {
		return "BanVO [bno=" + bno + ", hno=" + hno + ", mNo=" + mNo + ", bcs=" + bcs + ", bc=" + bc + ", regdate="
				+ regdate + "]";
	}

}
