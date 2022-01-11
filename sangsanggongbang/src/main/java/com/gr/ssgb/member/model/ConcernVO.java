package com.gr.ssgb.member.model;

public class ConcernVO {
//	CONCERN_NO NUMBER NOT NULL, /* 관심클래스번호 */
//	C_NO NUMBER NOT NULL, /* 클래스코드 */
//	M_NO NUMBER NOT NULL /* 개인회원번호 */
	
	private int concernNo;
	private int cNo;
	private int mNo;
	public int getConcernNo() {
		return concernNo;
	}
	public void setConcernNo(int concernNo) {
		this.concernNo = concernNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	@Override
	public String toString() {
		return "ConcernVO [concernNo=" + concernNo + ", cNo=" + cNo + ", mNo=" + mNo + "]";
	}
	
	
}
