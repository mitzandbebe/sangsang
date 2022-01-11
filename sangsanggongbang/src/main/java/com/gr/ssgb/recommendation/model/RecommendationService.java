package com.gr.ssgb.recommendation.model;

import java.util.List;

import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.notice.model.NoticeVO;

public interface RecommendationService {

	public int insertRecommendation(RecommendationVO vo);

	List<RecommendationVO> selectAllMemberRecommendation(SearchVO searchVo);

	List<RecommendationVO> selectAllHostRecommendation(SearchVO searchVo);

	List<RecommendationVO> selectAllRecommendation(SearchVO searchVo);

	public RecommendationVO selectByNoRecommendation(int recoNo);

	int selectTotalRecord(SearchVO searchVo);

	int selectTotalMemberRecord(SearchVO searchVo);

	int selectTotalHostRecord(SearchVO searchVo);

	public int updateRecommendation(RecommendationVO vo);

	public int deleteRecommendation(int recoNo);

}
