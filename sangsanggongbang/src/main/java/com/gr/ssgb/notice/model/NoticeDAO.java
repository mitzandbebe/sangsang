package com.gr.ssgb.notice.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface NoticeDAO {
	int insertNotice(NoticeVO vo);
	List<NoticeVO> selectNoticeAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	NoticeVO selectNoticeByNo(int noticeNo);
	NoticeVO selectPreNnexTitle(int noticeNo);
}
