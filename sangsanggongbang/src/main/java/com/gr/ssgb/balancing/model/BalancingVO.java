package com.gr.ssgb.balancing.model;

import java.sql.Timestamp;

public class BalancingVO {
	private int bNo; //정산번호 
	private int cNo; //클래스코드
	private int hNo; //호스트번호
	private int bPpnum; //진행인원
	private Timestamp bReqDate; //정산신청일
	private String bFlag; //정산신청여부
	
	public BalancingVO() {
		super();
	}
	
	public BalancingVO(int bNo, int cNo, int hNo, int bPpnum, Timestamp bReqDate, String bFlag) {
		super();
		this.bNo = bNo;
		this.cNo = cNo;
		this.hNo = hNo;
		this.bPpnum = bPpnum;
		this.bReqDate = bReqDate;
		this.bFlag = bFlag;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int gethNo() {
		return hNo;
	}
	public void sethNo(int hNo) {
		this.hNo = hNo;
	}
	public int getbPpnum() {
		return bPpnum;
	}
	public void setbPpnum(int bPpnum) {
		this.bPpnum = bPpnum;
	}
	public Timestamp getbReqDate() {
		return bReqDate;
	}
	public void setbReqDate(Timestamp bReqDate) {
		this.bReqDate = bReqDate;
	}
	public String getbFlag() {
		return bFlag;
	}
	public void setbFlag(String bFlag) {
		this.bFlag = bFlag;
	}
	@Override
	public String toString() {
		return "BalancingVO [bNo=" + bNo + ", cNo=" + cNo + ", hNo=" + hNo + ", bPpnum=" + bPpnum + ", bReqDate="
				+ bReqDate + ", bFlag=" + bFlag + "]";
	}
	
	
	
	
}
