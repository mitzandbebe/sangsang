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
				+ ", noticeFlag=" + noticeFlag + "]";
	}
}
