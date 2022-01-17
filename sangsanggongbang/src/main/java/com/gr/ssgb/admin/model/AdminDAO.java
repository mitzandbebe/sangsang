package com.gr.ssgb.admin.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDAO {

	String checkPwd(AdminVO vo);

	Integer selectTotalProfit(MonthVO monthVo);

	int selectTotalClassCnt();

	List<ClassRatioVO> selectRatio();


	Integer selectNewHostCnt(MonthVO monVo);

	Integer selectNewMemberCnt(MonthVO monVo);

}
