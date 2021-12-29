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

	
	private int contentsNo;
	private String thumbnail;
	private String cFilename;
	private long cFilesize;
	private String cFileOriginalname;



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
				+ ", cFilename=" + cFilename + ", cFilesize=" + cFilesize + ", cFileOriginalname=" + cFileOriginalname
				+ ", lLatitude=" + lLatitude + ", lLongitude=" + lLongitude + ", zipcode=" + zipcode + ", lAddress="
				+ lAddress + ", lAddressDetail=" + lAddressDetail + "]";
	}
	
	
	
}
