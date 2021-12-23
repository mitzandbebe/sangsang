package com.gr.ssgb.mainevent.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainEventDAO {
	public int insertEvent(MainEventVO vo);
	public List<MainEventVO> selectAll();
	public MainEventVO selectByNo(int no);
}
