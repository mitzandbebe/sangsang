package com.gr.ssgb.recommendation.model;

import java.sql.Timestamp;

public class RecommendationVO {
	private int recoNo;
	private int uNo;
	private String recoTitle;
	private String recoPwd; 
	private String recoContent;
	private Timestamp regdate;

	public int getRecoNo() {
		return recoNo;
	}

	public void setRecoNo(int recoNo) {
		this.recoNo = recoNo;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public String getRecoTitle() {
		return recoTitle;
	}

	public void setRecoTitle(String recoTitle) {
		this.recoTitle = recoTitle;
	}

	public String getRecoPwd() {
		return recoPwd;
	}

	public void setRecoPwd(String recoPwd) {
		this.recoPwd = recoPwd;
	}

	public String getRecoContent() {
		return recoContent;
	}

	public void setRecoContent(String recoContent) {
		this.recoContent = recoContent;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "RecommendationVO [recoNo=" + recoNo + ", uNo=" + uNo + ", recoTitle=" + recoTitle + ", recoPwd="
				+ recoPwd + ", recoContent=" + recoContent + ", regdate=" + regdate + "]";
	}

}
