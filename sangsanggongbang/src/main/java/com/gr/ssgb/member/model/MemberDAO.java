package com.gr.ssgb.member.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	int insertMember(MemberVO vo);
	int insertSnsMember(MemberVO memberVo);
	String checkIdPwd(String mId);
	int updateAdditionalInfo(MemberVO vo);
	int updateAdditionalSns(MemberVO vo);
	int selectMemberById(String mId);

}
