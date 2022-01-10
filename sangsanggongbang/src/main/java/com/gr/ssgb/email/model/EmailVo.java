package com.gr.ssgb.email.model;

public class EmailVo {
	private String sendId;
	private String sendNickname;
	private String receiveId;
	private String emailTitle;
	private String message;

	public String getSendId() {
		return sendId;
	}

	public void setSendId(String sendId) {
		this.sendId = sendId;
	}

	public String getSendNickname() {
		return sendNickname;
	}

	public void setSendNickname(String sendNickname) {
		this.sendNickname = sendNickname;
	}

	public String getReceiveId() {
		return receiveId;
	}

	public void setReceiveId(String receiveId) {
		this.receiveId = receiveId;
	}

	public String getEmailTitle() {
		return emailTitle;
	}

	public void setEmailTitle(String emailTitle) {
		this.emailTitle = emailTitle;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "EmailVo [sendId=" + sendId + ", sendNickname=" + sendNickname + ", receiveId=" + receiveId
				+ ", emailTitle=" + emailTitle + ", message=" + message + "]";
	}

}
