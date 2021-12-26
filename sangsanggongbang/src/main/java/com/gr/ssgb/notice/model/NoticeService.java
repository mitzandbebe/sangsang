package com.gr.ssgb.notice.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;

public interface NoticeService {
	int insertNotice(NoticeVO vo);
	List<NoticeVO> selectNoticeAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	NoticeVO selectNoticeByNo(int noticeNo);
	NoticeVO selectPreNnexTitle(int noticeNo);
	int updateNotice(NoticeVO vo);
	int deleteNotice(int noticeNo);
	int updateReadCount(int noticeNo);
}
