package com.gr.ssgb.recommendation.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;

public interface RecommendationService {

	public int insertRecommendation(RecommendationVO vo);

	List<RecommendationVO> selectAllRecommendation(SearchVO searchVo);

	public RecommendationVO selectByNoRecommendation(int recoNo);

	int selectTotalRecord(SearchVO searchVo);

	public int updateRecommendation(RecommendationVO vo);
	
	public int deleteRecommendation(int recoNo);

	int reply(RecommendationVO vo);

}
