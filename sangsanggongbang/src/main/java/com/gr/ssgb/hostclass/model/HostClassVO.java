package com.gr.ssgb.hostclass.model;

import java.sql.Timestamp;
import java.util.Date;

public class HostClassVO {
	//hostclass -------------------
//	C_NO NUMBER NOT NULL, /* 클래스코드 */
//	C_NAME VARCHAR(100) NOT NULL, /* 클래스명 */
//	CATEGORY_CODE NUMBER NOT NULL, /* 카테고리코드 */
//	H_NO NUMBER NOT NULL, /* 호스트번호 */
//	L_NO NUMBER, /* 장소번호 */
//	C_PRICE NUMBER NOT NULL, /* 가격 */
//	PPNUM NUMBER, /* 진행인원 */
//	C_REGDATE DATE DEFAULT SYSDATE, /* 등록일 */
//	C_START_TIME DATE, /* 시작시간 */
//	C_TIME NUMBER, /* 시간 */
//	END_FLAG VARCHAR2(20) /* 종료여부 */
	
	private int cNo;
	private String cName;
	private int CateCode;
	private int hNo;
	private int lNo;
	private int cPrice;
	private int ppnum;
	private Timestamp cRegdate;
	private Date cStart;
	private int cTime;
	private String endFlag;
	
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getCateCode() {
		return CateCode;
	}
	public void setCateCode(int cateCode) {
		CateCode = cateCode;
	}
	public int gethNo() {
		return hNo;
	}
	public void sethNo(int hNo) {
		this.hNo = hNo;
	}
	public int getlNo() {
		return lNo;
	}
	public void setlNo(int lNo) {
		this.lNo = lNo;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public int getPpnum() {
		return ppnum;
	}
	public void setPpnum(int ppnum) {
		this.ppnum = ppnum;
	}
	public Timestamp getcRegdate() {
		return cRegdate;
	}
	public void setcRegdate(Timestamp cRegdate) {
		this.cRegdate = cRegdate;
	}
	public Date getcStart() {
		return cStart;
	}
	public void setcStart(Date cStart) {
		this.cStart = cStart;
	}
	public int getcTime() {
		return cTime;
	}
	public void setcTime(int cTime) {
		this.cTime = cTime;
	}
	public String getEndFlag() {
		return endFlag;
	}
	public void setEndFlag(String endFlag) {
		this.endFlag = endFlag;
	}
	@Override
	public String toString() {
		return "HostClassVO [cNo=" + cNo + ", cName=" + cName + ", CateCode=" + CateCode + ", hNo=" + hNo + ", lNo="
				+ lNo + ", cPrice=" + cPrice + ", ppnum=" + ppnum + ", cRegdate=" + cRegdate + ", cStart=" + cStart
				+ ", cTime=" + cTime + ", endFlag=" + endFlag + "]";
	}


	
}
