package com.gr.ssgb.adminbalancing.model;

import java.sql.Timestamp;

public class AdminBalancingVO {
	private int bNo; //정산번호 
	private int cNo; //클래스코드
	private int hNo; //호스트번호
	private int fpnum; //확정인원
	private Timestamp bReqDate; //정산신청일
	private String bFlag; //정산신청여부
	private int cPrice; //클래스 단가
	
	public AdminBalancingVO() {
		super();
	}
	
	public AdminBalancingVO(int bNo, int cNo, int hNo, int fpnum, Timestamp bReqDate, String bFlag, int cPrice) {
		super();
		this.bNo = bNo;
		this.cNo = cNo;
		this.hNo = hNo;
		this.fpnum = fpnum;
		this.bReqDate = bReqDate;
		this.bFlag = bFlag;
		this.cPrice = cPrice;
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
	public int getFpnum() {
		return fpnum;
	}
	public void setFpnum(int fpnum) {
		this.fpnum = fpnum;
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
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	@Override
	public String toString() {
		return "BalancingVO [bNo=" + bNo + ", cNo=" + cNo + ", hNo=" + hNo + ", fpnum=" + fpnum + ", bReqDate="
				+ bReqDate + ", bFlag=" + bFlag + ", cPrice=" + cPrice + "]";
	}
	
	

	
	
	
	
}
