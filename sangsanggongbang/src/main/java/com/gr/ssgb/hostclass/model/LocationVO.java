package com.gr.ssgb.hostclass.model;

public class LocationVO {
	//classLocation--------------------
//	L_NO NUMBER NOT NULL, /* 장소번호 */
//	L_LATITUDE VARCHAR2(255), /* 위도 */
//	L_LONGITUDE VARCHAR2(255), /* 경도 */
//	ZIPCODE VARCHAR(10) NOT NULL, /* 우편번호 */
//	L_ADDRESS VARCHAR(300) NOT NULL, /* 주소 */
//	L_ADDRESS_DETAIL VARCHAR2(300) NOT NULL /* 상세주소 */
	private int lNo;
	private String lLatitude;
	private String lLongitude;
	private String zipcode;
	private String lAddress;
	private String lAddressDetail;
	private int hNo;
	
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
		return "LocationVO [lNo=" + lNo + ", lLatitude=" + lLatitude + ", lLongitude=" + lLongitude + ", zipcode="
				+ zipcode + ", lAddress=" + lAddress + ", lAddressDetail=" + lAddressDetail + ", hNo=" + hNo + "]";
	}
	
	
}
