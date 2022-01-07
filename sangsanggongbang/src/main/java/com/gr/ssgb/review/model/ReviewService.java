package com.gr.ssgb.review.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;

public interface ReviewService {
	int insertReview(ReviewVO reviewVo);
	public List<ReviewVO> selectAll(ReviewVO reviewVo);
	int selectTotalRecord(SearchVO searchVo);
}
