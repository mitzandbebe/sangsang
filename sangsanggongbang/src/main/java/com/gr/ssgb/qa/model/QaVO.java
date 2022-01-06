package com.gr.ssgb.qa.model;

import com.gr.ssgb.member.model.MemberVO;

import java.sql.Timestamp;

public class QaVO {
	private int qaNo;
	private int cNo; 
	private int mNo;
	private Integer upperQaNo;
	private String qaTitle;
	private String qaContent;
	private int qaStep;
	private int qaGroupId;
	private Timestamp qaRegdate;

	private MemberVO memberVO;

	public int getQaNo() {
		return qaNo;
	}

	public void setQaNo(int qaNo) {
		this.qaNo = qaNo;
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

	public Integer getUpperQaNo() {
		return upperQaNo;
	}

	public void setUpperQaNo(Integer upperQaNo) {
		this.upperQaNo = upperQaNo;
	}

	public String getQaTitle() {
		return qaTitle;
	}

	public void setQaTitle(String qaTitle) {
		this.qaTitle = qaTitle;
	}

	public String getQaContent() {
		return qaContent;
	}

	public void setQaContent(String qaContent) {
		this.qaContent = qaContent;
	}

	public int getQaStep() {
		return qaStep;
	}

	public void setQaStep(int qaStep) {
		this.qaStep = qaStep;
	}

	public int getQaGroupId() {
		return qaGroupId;
	}

	public void setQaGroupId(int qaGroupId) {
		this.qaGroupId = qaGroupId;
	}

	public Timestamp getQaRegdate() {
		return qaRegdate;
	}

	public void setQaRegdate(Timestamp qaRegdate) {
		this.qaRegdate = qaRegdate;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	@Override
	public String toString() {
		return "QaVO{" +
				"qaNo=" + qaNo +
				", cNo=" + cNo +
				", mNo=" + mNo +
				", upperQaNo=" + upperQaNo +
				", qaTitle='" + qaTitle + '\'' +
				", qaContent='" + qaContent + '\'' +
				", qaStep=" + qaStep +
				", qaGroupId=" + qaGroupId +
				", qaRegdate=" + qaRegdate +
				", memberVO=" + memberVO +
				'}';
	}
}
	