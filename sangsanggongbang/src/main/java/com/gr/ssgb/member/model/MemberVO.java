package com.gr.ssgb.member.model;

import java.sql.Timestamp;

public class MemberVO {
	private int mNo;
	private String mId;
	private String mName;
	private String pwd;
	private String mNickname;
	private String phone;
	private String bday;
	private String mZipcode;
	private String mAddress;
	private String mAddressDetail;
	private Timestamp regdate;
	private String mGrade;
	private String mOriginalname;
	private String mFilesize;
	private String mFilename;
	private String delfalg;
	public MemberVO() {
		super();
	}
	public MemberVO(int mNo, String mId, String mName, String pwd, String mNickname, String phone, String bday,
			String mZipcode, String mAddress, String mAddressDetail, Timestamp regdate, String mGrade,
			String mOriginalname, String mFilesize, String mFilename, String delfalg) {
		super();
		this.mNo = mNo;
		this.mId = mId;
		this.mName = mName;
		this.pwd = pwd;
		this.mNickname = mNickname; //
		this.phone = phone;
		this.bday = bday;
		this.mZipcode = mZipcode;
		this.mAddress = mAddress;
		this.mAddressDetail = mAddressDetail;
		this.regdate = regdate;
		this.mGrade = mGrade;
		this.mOriginalname = mOriginalname;
		this.mFilesize = mFilesize;
		this.mFilename = mFilename;
		this.delfalg = delfalg;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getmNickname() {
		return mNickname;
	}
	public void setmNickname(String mNickname) {
		this.mNickname = mNickname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBday() {
		return bday;
	}
	public void setBday(String bday) {
		this.bday = bday;
	}
	public String getmZipcode() {
		return mZipcode;
	}
	public void setmZipcode(String mZipcode) {
		this.mZipcode = mZipcode;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public String getmAddressDetail() {
		return mAddressDetail;
	}
	public void setmAddressDetail(String mAddressDetail) {
		this.mAddressDetail = mAddressDetail;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getmGrade() {
		return mGrade;
	}
	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}
	public String getmOriginalname() {
		return mOriginalname;
	}
	public void setmOriginalname(String mOriginalname) {
		this.mOriginalname = mOriginalname;
	}
	public String getmFilesize() {
		return mFilesize;
	}
	public void setmFilesize(String mFilesize) {
		this.mFilesize = mFilesize;
	}
	public String getmFilename() {
		return mFilename;
	}
	public void setmFilename(String mFilename) {
		this.mFilename = mFilename;
	}
	public String getDelfalg() {
		return delfalg;
	}
	public void setDelfalg(String delfalg) {
		this.delfalg = delfalg;
	}
	@Override
	public String toString() {
		return "MemberVO [mNo=" + mNo + ", mId=" + mId + ", mName=" + mName + ", pwd=" + pwd + ", mNickname="
				+ mNickname + ", phone=" + phone + ", bday=" + bday + ", mZipcode=" + mZipcode + ", mAddress="
				+ mAddress + ", mAddressDetail=" + mAddressDetail + ", regdate=" + regdate + ", mGrade=" + mGrade
				+ ", mOriginalname=" + mOriginalname + ", mFilesize=" + mFilesize + ", mFilename=" + mFilename
				+ ", delfalg=" + delfalg + "]";
	}
	
}
