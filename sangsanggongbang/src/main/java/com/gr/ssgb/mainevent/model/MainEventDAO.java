package com.gr.ssgb.mainevent.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface MainEventDAO {
	public int insertEvent(MainEventVO vo);
	public List<MainEventVO> selectAll(SearchVO searchVo);
	public MainEventVO selectByNo(int newsNo);
	int selectTotalRecord(SearchVO searchVo);
	public List<MainEventVO> selectByTop();
}
