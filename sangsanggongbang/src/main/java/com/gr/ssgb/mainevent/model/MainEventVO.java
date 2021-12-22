package com.gr.ssgb.mainevent.model;

import java.util.Date;

public class MainEventVO {
	private int NewsNo;
	private String NewsTitle;
	private String NewsContent;
	private String NewsUploadname;
	private int NewsFilesize;
	private String NewsOriginalname;
	private Date NewsRegdate;
	public int getNewsNo() {
		return NewsNo;
	}
	public void setNewsNo(int newsNo) {
		NewsNo = newsNo;
	}
	public String getNewsTitle() {
		return NewsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		NewsTitle = newsTitle;
	}
	public String getNewsContent() {
		return NewsContent;
	}
	public void setNewsContent(String newsContent) {
		NewsContent = newsContent;
	}
	public String getNewsUploadname() {
		return NewsUploadname;
	}
	public void setNewsUploadname(String newsUploadname) {
		NewsUploadname = newsUploadname;
	}
	public int getNewsFilesize() {
		return NewsFilesize;
	}
	public void setNewsFilesize(int newsFilesize) {
		NewsFilesize = newsFilesize;
	}
	public String getNewsOriginalname() {
		return NewsOriginalname;
	}
	public void setNewsOriginalname(String newsOriginalname) {
		NewsOriginalname = newsOriginalname;
	}
	public Date getNewsRegdate() {
		return NewsRegdate;
	}
	public void setNewsRegdate(Date newsRegdate) {
		NewsRegdate = newsRegdate;
	}
	@Override
	public String toString() {
		return "MainEventVO [NewsNo=" + NewsNo + ", NewsTitle=" + NewsTitle + ", NewsContent=" + NewsContent
				+ ", NewsUploadname=" + NewsUploadname + ", NewsFilesize=" + NewsFilesize + ", NewsOriginalname="
				+ NewsOriginalname + ", NewsRegdate=" + NewsRegdate + "]";
	}

}
