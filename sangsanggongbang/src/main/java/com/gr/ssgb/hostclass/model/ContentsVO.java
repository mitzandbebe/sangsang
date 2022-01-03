package com.gr.ssgb.hostclass.model;

public class ContentsVO {

// CREATE TABLE C_CONTENTS (
//	CONTENTS_NO NUMBER NOT NULL, /* 컨텐츠번호 */
//	C_NO NUMBER, /* 클래스코드 */
//	CONTENTS_CONTENT NCLOB, /* 내용 */
//	THUMBNAIL VARCHAR2(255), /* 썸네일 */
//	CONTENTS_FILENAME1 VARCHAR2(255), /* 사진업로드명 */
//    CONTENTS_FILENAME2 VARCHAR2(255), /* 사진업로드명 */
//    CONTENTS_FILENAME3 VARCHAR2(255), /* 사진업로드명 */
//    CONTENTS_FILENAME4 VARCHAR2(255), /* 사진업로드명 */
//    CONTENTS_FILENAME5 VARCHAR2(255) /* 사진업로드명 */
//);
 
	private int contentsNo;
	private int cNo;
	private String content;
	private String thumbnail;
	private String cFilename1;
	private String cFilename2;
	private String cFilename3;
	private String cFilename4;
	private String cFilename5;
	
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getContentsNo() {
		return contentsNo;
	}
	public void setContentsNo(int contentsNo) {
		this.contentsNo = contentsNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getcFilename1() {
		return cFilename1;
	}
	public void setcFilename1(String cFilename1) {
		this.cFilename1 = cFilename1;
	}
	public String getcFilename2() {
		return cFilename2;
	}
	public void setcFilename2(String cFilename2) {
		this.cFilename2 = cFilename2;
	}
	public String getcFilename3() {
		return cFilename3;
	}
	public void setcFilename3(String cFilename3) {
		this.cFilename3 = cFilename3;
	}
	public String getcFilename4() {
		return cFilename4;
	}
	public void setcFilename4(String cFilename4) {
		this.cFilename4 = cFilename4;
	}
	public String getcFilename5() {
		return cFilename5;
	}
	public void setcFilename5(String cFilename5) {
		this.cFilename5 = cFilename5;
	}
	@Override
	public String toString() {
		return "ContentsVO [contentsNo=" + contentsNo + ", cNo=" + cNo + ", content=" + content + ", thumbnail="
				+ thumbnail + ", cFilename1=" + cFilename1 + ", cFilename2=" + cFilename2 + ", cFilename3=" + cFilename3
				+ ", cFilename4=" + cFilename4 + ", cFilename5=" + cFilename5 + "]";
	}

	

	
}
