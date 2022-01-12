package com.gr.ssgb.recommendation.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecommendationDAO {

	public int insertRecommendation(RecommendationVO vo);

	List<RecommendationVO> selectAllMemberRecommendation(RecommendationVO RecommendationVo);

	List<RecommendationVO> selectAllHostRecommendation(RecommendationVO RecommendationVo);

	List<RecommendationVO> selectAllRecommendation(RecommendationVO RecommendationVo);

	public RecommendationVO selectByNoRecommendation(int recoNo);

	int selectTotalRecord(RecommendationVO RecommendationVo);

	int selectTotalMemberRecord(RecommendationVO RecommendationVo);

	int selectTotalHostRecord(RecommendationVO RecommendationVo);

	public int updateRecommendation(RecommendationVO vo);
	
	public int deleteRecommendation(int recoNo);

	int updateSortNo(RecommendationVO vo);
	
	int reply(RecommendationVO vo);
}