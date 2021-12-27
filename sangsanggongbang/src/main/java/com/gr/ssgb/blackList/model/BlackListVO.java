package com.gr.ssgb.blackList.model;

import java.sql.Timestamp;

public class BlackListVO {
	private int bno; //블랙리스트 번호
	private int uNo; //유저 번호
	private int hno; //호스트 번호
	private Timestamp regdate; //등록일
	private String col; //구분플래그
	private String delFlag; //삭제플래그
	
	//멤버 정보
	private String mId;
	private String mImgUrl;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getCol() {
		return col;
	}
	public void setCol(String col) {
		this.col = col;
	}
	public String getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmImgUrl() {
		return mImgUrl;
	}
	public void setmImgUrl(String mImgUrl) {
		this.mImgUrl = mImgUrl;
	}
	@Override
	public String toString() {
		return "BlackListVO [bno=" + bno + ", uNo=" + uNo + ", hno=" + hno + ", regdate=" + regdate + ", col=" + col
				+ ", delFlag=" + delFlag + ", mId=" + mId + ", mImgUrl=" + mImgUrl + "]";
	}
	

	
	
	
}
