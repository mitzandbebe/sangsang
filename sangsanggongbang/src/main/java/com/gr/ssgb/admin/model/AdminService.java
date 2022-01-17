package com.gr.ssgb.admin.model;

import java.util.List;
import java.util.Map;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.order.model.OrderVO;

public interface AdminService {
	public static final int LOGIN_OK=1;
	public static final int ID_NONE=2;
	public static final int PWD_DISAGREE=3;
	
	//아이디 중복확인시 필요한 상수
	public static final int EXIST_ID=1;  //해당 아이디가 이미 존재함
	public static final int NON_EXIST_ID=2;  //해당 아이디가 존재하지 않음-사용가능
	
	public int checkPwd(AdminVO vo);

	public Integer selectTotalProfit(MonthVO monVo);

	public int selectTotalClassCnt();

	public List<ClassRatioVO> selectRatio();


	public Integer selectNewMemberCnt(MonthVO monVo);

	public Integer selectNewHostCnt(MonthVO monVo);

	public List<Map<String, Object>> selectRefundList(SearchVO searchVo);

	public int selectTotalrefund();

	public int updateAllRefund();

	public int cancleRefund(OrderVO orderVo);
}
