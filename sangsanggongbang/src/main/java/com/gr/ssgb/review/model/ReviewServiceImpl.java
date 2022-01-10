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

	@Override
	public Integer selectRate(int cNo) {
		return reviewDao.selectRate(cNo);
	}

	@Override
	public List<ReviewVO> selectAllRate() {
		return reviewDao.selectAllRate();
	}

	@Override
	public List<ReviewVO> AllRate() {
		List<ReviewVO> list = reviewDao.AllRate();
		int sum=0;
		int avg=0;
		for(int i=0;i<list.size();i++) {
			for(int j=1;j<list.size();j++) {
				if(list.get(i).getcNo()==list.get(j).getcNo()) {
					sum+=list.get(j).getrRate();
				}
				
			}
		}
		return null;
	}

	@Override
	public int selectReviewByHost(int hNo) {
		return reviewDao.selectReviewByHost(hNo);
	}
	
	
}
