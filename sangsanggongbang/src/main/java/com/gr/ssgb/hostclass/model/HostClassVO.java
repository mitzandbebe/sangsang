package com.gr.ssgb.hostclass.model;

import java.sql.Timestamp;

public class HostClassVO {
	//hostclass -------------------
//	C_NO NUMBER NOT NULL, /* 클래스코드 */
//	C_NAME VARCHAR(100) NOT NULL, /* 클래스명 */
//	CATEGORY_CODE NUMBER NOT NULL, /* 카테고리코드 */
//	H_NO NUMBER NOT NULL, /* 호스트번호 */
//	L_NO NUMBER, /* 장소번호 */
//	C_PRICE NUMBER NOT NULL, /* 가격 */
//	PPNUM NUMBER, /* 진행인원 */
//	C_REGDATE DATE DEFAULT SYSDATE, /* 등록일 */
//	C_START_TIME DATE NOT NULL, /* 시작시간 */
//	C_END_TIME DATE, /* 종료시간 */
//	END_FLAG VARCHAR2(20) /* 종료여부 */
	
	private int cNo;
	private String cName;
	private int CateCode;
	private int hNo;
	private int lNo;
	private int cPrice;
	private int ppnum;
	private Timestamp cRegdate;
	private Timestamp cStart;
	private Timestamp cEnd;
	private String endFlag;
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getCateCode() {
		return CateCode;
	}
	public void setCateCode(int cateCode) {
		CateCode = cateCode;
	}
	public int gethNo() {
		return hNo;
	}
	public void sethNo(int hNo) {
		this.hNo = hNo;
	}
	public int getlNo() {
		return lNo;
	}
	public void setlNo(int lNo) {
		this.lNo = lNo;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public int getPpnum() {
		return ppnum;
	}
	public void setPpnum(int ppnum) {
		this.ppnum = ppnum;
	}
	public Timestamp getcRegdate() {
		return cRegdate;
	}
	public void setcRegdate(Timestamp cRegdate) {
		this.cRegdate = cRegdate;
	}
	public Timestamp getcStart() {
		return cStart;
	}
	public void setcStart(Timestamp cStart) {
		this.cStart = cStart;
	}
	public Timestamp getcEnd() {
		return cEnd;
	}
	public void setcEnd(Timestamp cEnd) {
		this.cEnd = cEnd;
	}
	public String getEndFlag() {
		return endFlag;
	}
	public void setEndFlag(String endFlag) {
		this.endFlag = endFlag;
	}
	
	//classContents------------
//	CONTENTS_NO NUMBER NOT NULL, /* 컨텐츠번호 */
//	C_NO NUMBER, /* 클래스코드 */
//	THUMBNAIL VARCHAR2(255), /* 썸네일 */
//	CONTENTS_FILENAME VARCHAR2(255), /* 사진업로드명 */
//	CONTENTS_FILESIZE NUMBER, /* 사진크기 */
//	CONTENTS_ORIGINALNAME VARCHAR2(255), /* 사진원본명 */
//	CONTENTS_FILENAME2 VARCHAR2(255), /* 사진업로드명2 */
//	CONTENTS_FILESIZE2 NUMBER, /* 사진크기2 */
//	CONTENTS_ORIGINALNAME2 VARCHAR2(255), /* 사진원본명2 */
//	CONTENTS_FILENAME3 VARCHAR2(255), /* 사진업로드명3 */
//	CONTENTS_FILESIZE3 NUMBER, /* 사진크기3 */
//	CONTENTS_ORIGINALNAME3 VARCHAR2(255), /* 사진원본명3 */
//	CONTENTS_FILENAME4 VARCHAR2(255), /* 사진업로드명4 */
//	CONTENTS_FILESIZE4 NUMBER, /* 사진크기4 */
//	CONTENTS_ORIGINALNAME4 VARCHAR2(255), /* 사진원본명4 */
//	CONTENTS_FILENAME5 VARCHAR2(255), /* 사진업로드명5 */
//	CONTENTS_FILESIZE5 NUMBER, /* 사진크기5 */
//	CONTENTS_ORIGINALNAME5 VARCHAR2(255), /* 사진원본명5 */
//	CONTENTS_FILENAME6 VARCHAR2(255), /* 사진업로드명6 */
//	CONTENTS_FILESIZE6 NUMBER, /* 사진크기6 */
//	CONTENTS_ORIGINALNAME6 VARCHAR2(255), /* 사진원본명6 */
//	CONTENTS_FILENAME7 VARCHAR2(255), /* 사진업로드명7 */
//	CONTENTS_FILESIZE7 NUMBER, /* 사진크기7 */
//	CONTENTS_ORIGINALNAME7 VARCHAR2(255), /* 사진원본명7 */
//	CONTENTS_FILENAME8 VARCHAR2(255), /* 사진업로드명8 */
//	CONTENTS_FILESIZE8 NUMBER, /* 사진크기8 */
//	CONTENTS_ORIGINALNAME8 VARCHAR2(255) /* 사진원본명8 */
	
	private int contentsNo;
	private String thumbnail;
	private String cFilename;
	private String cFilesize;
	private String cFilename1;
	private String cFilesize1;
	private String cFilename2;
	private String cFilesize2;
	private String cFilename3;
	private String cFilesize3;
	private String cFilename4;
	private String cFilesize4;
	private String cFilename5;
	private String cFilesize5;
	private String cFilename6;
	private String cFilesize6;
	private String cFilename7;
	private String cFilesize7;
	private String cFilename8;
	private String cFilesize8;
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
	public String getcFilesize() {
		return cFilesize;
	}
	public void setcFilesize(String cFilesize) {
		this.cFilesize = cFilesize;
	}
	public String getcFilename1() {
		return cFilename1;
	}
	public void setcFilename1(String cFilename1) {
		this.cFilename1 = cFilename1;
	}
	public String getcFilesize1() {
		return cFilesize1;
	}
	public void setcFilesize1(String cFilesize1) {
		this.cFilesize1 = cFilesize1;
	}
	public String getcFilename2() {
		return cFilename2;
	}
	public void setcFilename2(String cFilename2) {
		this.cFilename2 = cFilename2;
	}
	public String getcFilesize2() {
		return cFilesize2;
	}
	public void setcFilesize2(String cFilesize2) {
		this.cFilesize2 = cFilesize2;
	}
	public String getcFilename3() {
		return cFilename3;
	}
	public void setcFilename3(String cFilename3) {
		this.cFilename3 = cFilename3;
	}
	public String getcFilesize3() {
		return cFilesize3;
	}
	public void setcFilesize3(String cFilesize3) {
		this.cFilesize3 = cFilesize3;
	}
	public String getcFilename4() {
		return cFilename4;
	}
	public void setcFilename4(String cFilename4) {
		this.cFilename4 = cFilename4;
	}
	public String getcFilesize4() {
		return cFilesize4;
	}
	public void setcFilesize4(String cFilesize4) {
		this.cFilesize4 = cFilesize4;
	}
	public String getcFilename5() {
		return cFilename5;
	}
	public void setcFilename5(String cFilename5) {
		this.cFilename5 = cFilename5;
	}
	public String getcFilesize5() {
		return cFilesize5;
	}
	public void setcFilesize5(String cFilesize5) {
		this.cFilesize5 = cFilesize5;
	}
	public String getcFilename6() {
		return cFilename6;
	}
	public void setcFilename6(String cFilename6) {
		this.cFilename6 = cFilename6;
	}
	public String getcFilesize6() {
		return cFilesize6;
	}
	public void setcFilesize6(String cFilesize6) {
		this.cFilesize6 = cFilesize6;
	}
	public String getcFilename7() {
		return cFilename7;
	}
	public void setcFilename7(String cFilename7) {
		this.cFilename7 = cFilename7;
	}
	public String getcFilesize7() {
		return cFilesize7;
	}
	public void setcFilesize7(String cFilesize7) {
		this.cFilesize7 = cFilesize7;
	}
	public String getcFilename8() {
		return cFilename8;
	}
	public void setcFilename8(String cFilename8) {
		this.cFilename8 = cFilename8;
	}
	public String getcFilesize8() {
		return cFilesize8;
	}
	public void setcFilesize8(String cFilesize8) {
		this.cFilesize8 = cFilesize8;
	}
	
	//classLocation--------------------
//	L_NO NUMBER NOT NULL, /* 장소번호 */
//	L_LATITUDE VARCHAR2(255), /* 위도 */
//	L_LONGITUDE VARCHAR2(255), /* 경도 */
//	ZIPCODE VARCHAR(10) NOT NULL, /* 우편번호 */
//	L_ADDRESS VARCHAR(300) NOT NULL, /* 주소 */
//	L_ADDRESS_DETAIL VARCHAR2(300) NOT NULL /* 상세주소 */
	private String lLatitude;
	private String lLongitude;
	private String zipcode;
	private String lAddress;
	private String lAddressDetail;
	public String getlLatitude() {
		return lLatitude;
	}
	public void setlLatitude(String lLatitude) {
		this.lLatitude = lLatitude;
	}
	public String getlLongitude() {
		return lLongitude;
	}
	public void setlLongitude(String lLongitude) {
		this.lLongitude = lLongitude;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getlAddress() {
		return lAddress;
	}
	public void setlAddress(String lAddress) {
		this.lAddress = lAddress;
	}
	public String getlAddressDetail() {
		return lAddressDetail;
	}
	public void setlAddressDetail(String lAddressDetail) {
		this.lAddressDetail = lAddressDetail;
	}
	@Override
	public String toString() {
		return "HostClassVO [cNo=" + cNo + ", cName=" + cName + ", CateCode=" + CateCode + ", hNo=" + hNo + ", lNo="
				+ lNo + ", cPrice=" + cPrice + ", ppnum=" + ppnum + ", cRegdate=" + cRegdate + ", cStart=" + cStart
				+ ", cEnd=" + cEnd + ", endFlag=" + endFlag + ", contentsNo=" + contentsNo + ", thumbnail=" + thumbnail
				+ ", cFilename=" + cFilename + ", cFilesize=" + cFilesize + ", cFilename1=" + cFilename1
				+ ", cFilesize1=" + cFilesize1 + ", cFilename2=" + cFilename2 + ", cFilesize2=" + cFilesize2
				+ ", cFilename3=" + cFilename3 + ", cFilesize3=" + cFilesize3 + ", cFilename4=" + cFilename4
				+ ", cFilesize4=" + cFilesize4 + ", cFilename5=" + cFilename5 + ", cFilesize5=" + cFilesize5
				+ ", cFilename6=" + cFilename6 + ", cFilesize6=" + cFilesize6 + ", cFilename7=" + cFilename7
				+ ", cFilesize7=" + cFilesize7 + ", cFilename8=" + cFilename8 + ", cFilesize8=" + cFilesize8
				+ ", lLatitude=" + lLatitude + ", lLongitude=" + lLongitude + ", zipcode=" + zipcode + ", lAddress="
				+ lAddress + ", lAddressDetail=" + lAddressDetail + "]";
	}
	
	
	
}
