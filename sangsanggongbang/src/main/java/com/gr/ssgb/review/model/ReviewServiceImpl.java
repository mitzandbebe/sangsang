package com.gr.ssgb.review.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{
	private final ReviewDAO reviewDao;

	@Autowired
	public ReviewServiceImpl(ReviewDAO reviewDao) {
		this.reviewDao = reviewDao;
	}
	
	
}
