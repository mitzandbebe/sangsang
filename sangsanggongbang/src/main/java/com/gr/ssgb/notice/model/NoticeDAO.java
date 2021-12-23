package com.gr.ssgb.notice.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeDAO {
	int insertNotice(NoticeVO vo);
}
