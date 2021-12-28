package com.gr.ssgb.memberInquiry.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;

@Mapper
public interface MemberInquiryDAO {
	List<MemberVO> selectMemberAll();
	List<HostVO> selectHostAll();
}
