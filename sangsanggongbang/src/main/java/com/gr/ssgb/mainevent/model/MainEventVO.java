package com.gr.ssgb.mainevent.model;

import java.util.Date;

public class MainEventVO {
	private int newsNo;
	private String newsTitle;
	private String newsContent;
	private String newsUploadname;
	private int newsFilesize;
	private String newsOriginalname;
	private Date newsRegdate;
	public int getNewsNo() {
		return newsNo;
	}
	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsUploadname() {
		return newsUploadname;
	}
	public void setNewsUploadname(String newsUploadname) {
		this.newsUploadname = newsUploadname;
	}
	public int getNewsFilesize() {
		return newsFilesize;
	}
	public void setNewsFilesize(int newsFilesize) {
		this.newsFilesize = newsFilesize;
	}
	public String getNewsOriginalname() {
		return newsOriginalname;
	}
	public void setNewsOriginalname(String newsOriginalname) {
		this.newsOriginalname = newsOriginalname;
	}
	public Date getNewsRegdate() {
		return newsRegdate;
	}
	public void setNewsRegdate(Date newsRegdate) {
		this.newsRegdate = newsRegdate;
	}
	@Override
	public String toString() {
		return "MainEventVO [newsNo=" + newsNo + ", newsTitle=" + newsTitle + ", newsContent=" + newsContent
				+ ", newsUploadname=" + newsUploadname + ", newsFilesize=" + newsFilesize + ", newsOriginalname="
				+ newsOriginalname + ", newsRegdate=" + newsRegdate + "]";
	}

}
