package com.gr.ssgb.recommendation.model;

import java.util.List;

public interface RecommendationService {

	public int insertRecommendation(RecommendationVO vo);

	List<RecommendationVO> selectAllMemberRecommendation(RecommendationVO recommendationVo);

	List<RecommendationVO> selectAllHostRecommendation(RecommendationVO recommendationVo);

	List<RecommendationVO> selectAllRecommendation(RecommendationVO recommendationVo);

	public RecommendationVO selectByNoRecommendation(int recoNo);

	int selectTotalRecord(RecommendationVO recommendationVo);

	int selectTotalMemberRecord(RecommendationVO recommendationVo);

	int selectTotalHostRecord(RecommendationVO recommendationVo);

	public int updateRecommendation(RecommendationVO vo);
	
	public int deleteRecommendation(int recoNo);
	
	public int deleteRecommendationR(int recoNo);

	int reply(RecommendationVO vo);

}