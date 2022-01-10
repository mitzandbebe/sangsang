package com.gr.ssgb.admin.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDAO {

	String checkPwd(AdminVO vo);

	int selectTotalProfit(MonthVO monthVo);

}
