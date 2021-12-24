package com.gr.ssgb.mainevent.model;

import java.util.List;

public interface MainEventService {
	public int insertEvent(MainEventVO vo);
	public List<MainEventVO> selectAll();
	public MainEventVO selectByNo(int newsNo);
}
