package com.gr.ssgb.member.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	int insertMember(MemberVO vo);
	int selectBySnsId(String snsaccount);
	int insertSnsMember(MemberVO memberVo);
	String checkIdPwd(String mId);
	//
}
