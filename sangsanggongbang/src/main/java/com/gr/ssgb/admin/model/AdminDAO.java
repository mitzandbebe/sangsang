package com.gr.ssgb.admin.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.order.model.OrderVO;

@Mapper
public interface AdminDAO {

	String checkPwd(AdminVO vo);

	Integer selectTotalProfit(MonthVO monthVo);

	int selectTotalClassCnt();

	List<ClassRatioVO> selectRatio();


	Integer selectNewHostCnt(MonthVO monVo);

	Integer selectNewMemberCnt(MonthVO monVo);

	List<Map<String, Object>> selectRefundList(SearchVO searchVo);

	int selectTotalrefund();

	int updateAllRefund();

	int cancleRefund(OrderVO orderVo);

}
