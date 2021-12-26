package com.gr.ssgb.notice.model;

import java.sql.Timestamp;

public class NoticeVO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Timestamp noticeRegdate;
	private int noticeStep;
	private int noticeGroupId;
	private String noticeFlag;
	
	//이전 or 다음 글
	private int preNo;
	private int nextNo;
	private String preTitle; //이전 글 제목
	private String nextTitle; //다음 글 제목

	
	public int getPreNo() {
		return preNo;
	}

	public void setPreNo(int preNo) {
		this.preNo = preNo;
	}

	public int getNextNo() {
		return nextNo;
	}

	public void setNextNo(int nextNo) {
		this.nextNo = nextNo;
	}

	public String getPreTitle() {
		return preTitle;
	}

	public void setPreTitle(String preTitle) {
		this.preTitle = preTitle;
	}

	public String getNextTitle() {
		return nextTitle;
	}

	public void setNextTitle(String nextTitle) {
		this.nextTitle = nextTitle;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Timestamp getNoticeRegdate() {
		return noticeRegdate;
	}

	public void setNoticeRegdate(Timestamp noticeRegdate) {
		this.noticeRegdate = noticeRegdate;
	}

	public int getNoticeStep() {
		return noticeStep;
	}

	public void setNoticeStep(int noticeStep) {
		this.noticeStep = noticeStep;
	}

	public int getNoticeGroupId() {
		return noticeGroupId;
	}

	public void setNoticeGroupId(int noticeGroupId) {
		this.noticeGroupId = noticeGroupId;
	}

	public String getNoticeFlag() {
		return noticeFlag;
	}

	public void setNoticeFlag(String noticeFlag) {
		this.noticeFlag = noticeFlag;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeRegdate=" + noticeRegdate + ", noticeStep=" + noticeStep + ", noticeGroupId=" + noticeGroupId
				+ ", noticeFlag=" + noticeFlag + ", preNo=" + preNo + ", nextNo=" + nextNo + ", preTitle=" + preTitle
				+ ", nextTitle=" + nextTitle + "]";
	}
}
