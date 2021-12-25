package com.gr.ssgb.balancing.model;

import java.sql.Timestamp;

public class BalancingVO {
	private int bNo;
	private int cNO;
	private int hNO;
	private int bPpnum;
	private Timestamp bReqDate;
	private String bFlag;
	
	public BalancingVO(int bNo, int cNO, int hNO, int bPpnum, Timestamp bReqDate, String bFlag) {
		super();
		this.bNo = bNo;
		this.cNO = cNO;
		this.hNO = hNO;
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
	public int getcNO() {
		return cNO;
	}
	public void setcNO(int cNO) {
		this.cNO = cNO;
	}
	public int gethNO() {
		return hNO;
	}
	public void sethNO(int hNO) {
		this.hNO = hNO;
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
		return "BalancingVO [bNo=" + bNo + ", cNO=" + cNO + ", hNO=" + hNO + ", bPpnum=" + bPpnum + ", bReqDate="
				+ bReqDate + ", bFlag=" + bFlag + "]";
	}
	
	
	
}
