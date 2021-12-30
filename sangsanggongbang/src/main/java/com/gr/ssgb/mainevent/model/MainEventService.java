package com.gr.ssgb.mainevent.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.member.model.MemberVO;

public interface MainEventService {
	public int insertEvent(MainEventVO vo);
	public List<MainEventVO> selectAll(SearchVO searchVo);
	public MainEventVO selectByNo(int newsNo);
	int selectTotalRecord(SearchVO searchVo);
	public List<MainEventVO> selectByTop();
	public int updateEvent(MainEventVO vo);
	public int deleteEvent(int newsNo);
}
