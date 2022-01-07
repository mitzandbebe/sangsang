package com.gr.ssgb.review.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.SearchVO;

@Service
public class ReviewServiceImpl implements ReviewService{
	private final ReviewDAO reviewDao;

	@Autowired
	public ReviewServiceImpl(ReviewDAO reviewDao) {
		this.reviewDao = reviewDao;
	}

	@Override
	public int insertReview(ReviewVO reviewVo) {
		return reviewDao.insertReview(reviewVo);
	}

	@Override
	public List<ReviewVO> selectAll(ReviewVO reviewVo) {
		return reviewDao.selectAll(reviewVo);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return reviewDao.selectTotalRecord(searchVo);
	}
	
	
}
