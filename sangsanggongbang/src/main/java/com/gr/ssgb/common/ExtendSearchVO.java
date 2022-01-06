package com.gr.ssgb.common;

public class ExtendSearchVO extends SearchVO{
	private String mId; //멤버 아이디
	private String hId; //호스트 아이디
	private int hNo; //호스트번호 로그인세션에서 가져와서 넣는다
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String gethId() {
		return hId;
	}
	public void sethId(String hId) {
		this.hId = hId;
	}
	public int gethNo() {
		return hNo;
	}
	public void sethNo(int hNo) {
		this.hNo = hNo;
	}
	@Override
	public String toString() {
		return "ExtendSearchVO [mId=" + mId + ", hId=" + hId + ", hNo=" + hNo + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	

}
