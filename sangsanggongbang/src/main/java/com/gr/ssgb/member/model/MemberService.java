package com.gr.ssgb.member.model;

public interface MemberService {
	public static final int LOGIN_OK=1;
	public static final int ID_NONE=2;
	public static final int PWD_DISAGREE=3;
	
	//아이디 중복확인시 필요한 상수
	public static final int EXIST_ID=1;  //해당 아이디가 이미 존재함
	public static final int NON_EXIST_ID=2;  //해당 아이디가 존재하지 않음-사용가능
	
	int insertMember(MemberVO vo);

	public int checkIdPwd(String mId, String pwd);

	int updateAdditionalInfo(MemberVO vo);

	int updateAdditionalSns(MemberVO vo);

	int selectMemberCnt(String getmId);

	int insertSnsMember(MemberVO memberVo);

	Integer selectMno(String getmId);

	int insertPayment(PaymentVO paymentVo);

	MemberVO selectMemberById(String mId);

	PaymentVO selectBasicPayment(int getmNo);

	int updatePaymentInfo(PaymentVO payVo);

	int updatePwd(MemberVO vo);

	int findPaymentCnt(int getmNo);

	String selectNicname(int mNo);
}
