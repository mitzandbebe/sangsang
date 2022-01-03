package com.gr.ssgb.qa.model;

import java.sql.Timestamp;

public class QaVO {
	private int qaNo;
	private int cNo; 
	private int uNo; 
	private String qaTitle;
	private String qaContent;
	private int qaStep;
	private int qaGroupid;
	private Timestamp qaRegdate;
	
	public QaVO() {
		super();
	}	
			
	public QaVO(int qaNo, int cNo, int uNo, String qaTitle, String qaContent, 
			int qaStep, int qaGroupid, Timestamp qaRegdate) {
		super();
		this.qaNo = qaNo;
		this.cNo = cNo;
		this.uNo = uNo;
		this.qaTitle = qaTitle;
		this.qaContent = qaContent;
		this.qaStep = qaStep;
		this.qaGroupid = qaGroupid;
		this.qaRegdate = qaRegdate;
		
	}

	public int getQaNo() {
		return qaNo;
	}

	public void setQaNo(int qaNo) {
		qaNo = qaNo;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		cNo = cNo;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		uNo = uNo;
	}

	public String getQaTitle() {
		return qaTitle;
	}

	public void setQaTitle(String qaTitle) {
		qaTitle = qaTitle;
	}

	public String getQaContent() {
		return qaContent;
	}

	public void setQaContent(String qaContent) {
		qaContent = qaContent;
	}

	public int getQaStep() {
		return qaStep;
	}

	public void setQaStep(int qaStep) {
		qaStep = qaStep;
	}

	public int getQaGroupid() {
		return qaGroupid;
	}

	public void setQaGroupid(int qaGroupid) {
		qaGroupid = qaGroupid;
	}

	public Timestamp getQaRegdate() {
		return qaRegdate;
	}

	public void setQaRegdate(Timestamp qaRegdate) {
		qaRegdate = qaRegdate;
	}

	@Override
	public String toString() {
		return "QaVO [QaNo=" + qaNo + ", cNo=" + cNo + ", uNo=" + uNo + ", qaTitle=" + qaTitle + ", qaContent="
				+ qaContent + ", QaStep=" + qaStep + ", QaGroupid=" + qaGroupid + ", qaRegdate=" + qaRegdate + "]";
	}	
}
	