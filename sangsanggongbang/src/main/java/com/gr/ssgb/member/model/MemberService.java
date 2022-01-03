package com.gr.ssgb.member.model;

public interface MemberService {
	public static final int LOGIN_OK=1;
	public static final int ID_NONE=2;
	public static final int PWD_DISAGREE=3;
	
	int insertMember(MemberVO vo);

	public int checkIdPwd(String mId, String pwd);

	int updateAdditionalInfo(MemberVO vo);

	int updateAdditionalSns(MemberVO vo);

	int selectMemberById(String getmId);

	int insertSnsMember(MemberVO memberVo);

}
