package com.gr.ssgb.recommendation.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface RecommendationDAO {

	public int insertRecommendation(RecommendationVO vo);

	List<RecommendationVO> selectAllRecommendation(SearchVO searchVo);

	public RecommendationVO selectByNoRecommendation(int recoNo);

	int selectTotalRecord(SearchVO searchVo);

	public int updateRecommendation(RecommendationVO vo);

	public int deleteRecommendation(int recoNo);

}
