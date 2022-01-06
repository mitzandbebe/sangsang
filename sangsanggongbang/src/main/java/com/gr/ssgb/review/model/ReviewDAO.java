package com.gr.ssgb.review.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface ReviewDAO {
	int insertReview(ReviewVO reviewVo);
	public List<ReviewVO> selectAll(int cNo);
	int selectTotalRecord(SearchVO searchVo);
}
