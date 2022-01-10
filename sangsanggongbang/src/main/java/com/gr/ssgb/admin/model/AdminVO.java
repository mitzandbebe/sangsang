package com.gr.ssgb.admin.model;

public class AdminVO {
	private int adNo;
	private String adId;
	private String adPwd;
	private String adNick;
	
	public int getAdNo() {
		return adNo;
	}
	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}
	public String getAdId() {
		return adId;
	}
	public void setAdId(String adId) {
		this.adId = adId;
	}
	public String getAdPwd() {
		return adPwd;
	}
	public void setAdPwd(String adPwd) {
		this.adPwd = adPwd;
	}
	public String getAdNick() {
		return adNick;
	}
	public void setAdNick(String adNick) {
		this.adNick = adNick;
	}
	@Override
	public String toString() {
		return "AdminVO [adNo=" + adNo + ", adId=" + adId + ", adPwd=" + adPwd + ", adNick=" + adNick + "]";
	}
	
	
}
