package com.gr.ssgb.mainevent.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainEventDAO {
	public int insertEvent(MainEventVO vo);
}
