package com.gr.ssgb.hostclass.model;

public class ContentsVO {
	private int contentsNo;
	private int cNo;
	private String thumbnail;
	private String cFilename;
	private long cFilesize;
	private String cFileOriginalname;

	
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getContentsNo() {
		return contentsNo;
	}
	public void setContentsNo(int contentsNo) {
		this.contentsNo = contentsNo;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getcFilename() {
		return cFilename;
	}
	public void setcFilename(String cFilename) {
		this.cFilename = cFilename;
	}
	public long getcFilesize() {
		return cFilesize;
	}
	public void setcFilesize(long cFilesize) {
		this.cFilesize = cFilesize;
	}
	public String getcFileOriginalname() {
		return cFileOriginalname;
	}
	public void setcFileOriginalname(String cFileOriginalname) {
		this.cFileOriginalname = cFileOriginalname;
	}
	@Override
	public String toString() {
		return "ContentsVO [contentsNo=" + contentsNo + ", cNo=" + cNo + ", thumbnail=" + thumbnail + ", cFilename="
				+ cFilename + ", cFilesize=" + cFilesize + ", cFileOriginalname=" + cFileOriginalname + "]";
	}
	
}
