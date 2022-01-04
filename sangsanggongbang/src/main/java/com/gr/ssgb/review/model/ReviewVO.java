package com.gr.ssgb.review.model;

import java.sql.Timestamp;

public class ReviewVO {
//	R_NO NUMBER NOT NULL, /* 후기번호 */
//	C_NO NUMBER, /* 클래스코드 */
//	H_NO NUMBER, /* 호스트번호 */
//	R_RATE NUMBER, /* 평점 */
//	R_CONTENT VARCHAR2(255), /* 리뷰내용 */
//	R_UPLOADNAME VARCHAR2(255), /* 업로드파일명 */
//	R_FILESIZE NUMBER, /* 파일사이즈 */
//	R_ORIGINALNAME VARCHAR2(255), /* 원본파일명 */
//	R_REGDATE DATE DEFAULT SYSDATE /* 등록일 */
	
	private int rNo;
	private int cNo;
	private int hNo;
	private int rRate;
	private String rContent;
	private String rFilesize;
	private String rOriginalname;
	private Timestamp rRegdate;
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
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
	public int getrRate() {
		return rRate;
	}
	public void setrRate(int rRate) {
		this.rRate = rRate;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getrFilesize() {
		return rFilesize;
	}
	public void setrFilesize(String rFilesize) {
		this.rFilesize = rFilesize;
	}
	public String getrOriginalname() {
		return rOriginalname;
	}
	public void setrOriginalname(String rOriginalname) {
		this.rOriginalname = rOriginalname;
	}
	public Timestamp getrRegdate() {
		return rRegdate;
	}
	public void setrRegdate(Timestamp rRegdate) {
		this.rRegdate = rRegdate;
	}
	@Override
	public String toString() {
		return "ReviewVO [rNo=" + rNo + ", cNo=" + cNo + ", hNo=" + hNo + ", rRate=" + rRate + ", rContent=" + rContent
				+ ", rFilesize=" + rFilesize + ", rOriginalname=" + rOriginalname + ", rRegdate=" + rRegdate + "]";
	}
	
	
	
}
