package com.gr.ssgb.memberInquiry.model;

import java.security.Timestamp;

import com.gr.ssgb.common.SearchVO;

public class ClassUserVO extends SearchVO {
	private int cNo; // 클래스 넘버
	private String cName;// 클래스 이름
	private int hNo; // 호스트 넘버
	private String mId;// 멤버 아이디
	private int mNo; // 멤버 넘버
	private String mName; // 멤버 이름
	private Timestamp cStartTime; // 클래스 실행날짜

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

	public int gethNo() {
		return hNo;
	}

	public void sethNo(int hNo) {
		this.hNo = hNo;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public Timestamp getcStartTime() {
		return cStartTime;
	}

	public void setcStartTime(Timestamp cStartTime) {
		this.cStartTime = cStartTime;
	}

	@Override
	public String toString() {
		return "ClassUserVO [cNo=" + cNo + ", cName=" + cName + ", hNo=" + hNo + ", mId=" + mId + ", mNo=" + mNo
				+ ", mName=" + mName + ", cStartTime=" + cStartTime + ", toString()=" + super.toString() + "]";
	}

}
