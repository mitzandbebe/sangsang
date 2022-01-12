package com.gr.ssgb.member.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	int insertMember(MemberVO vo);
	int insertSnsMember(MemberVO memberVo);
	String checkIdPwd(String mId);
	int updateAdditionalInfo(MemberVO vo);
	int updateAdditionalSns(MemberVO vo);
	int selectMemberCnt(String mId);
	Integer selectMno(String getmId);
	int insertPayment(PaymentVO paymentVo);
	MemberVO selectMemberById(String mId);
	PaymentVO selectBasicPayment(int getmNo);
	int updatePaymentInfo(PaymentVO payVo);
	int updatePwd(MemberVO vo);
	int findPaymentCnt(int getmNo);
	int updateNickname(MemberVO memberVo);
	int updateAddiWithoutProfile(MemberVO vo);

	int updateMGrade(MemberVO vo);
	


	int insertConcern(ConcernVO concernVo);
	int deleteConcern(int cNo);
	List<ConcernVO> selectConcern(int mNo);

}
