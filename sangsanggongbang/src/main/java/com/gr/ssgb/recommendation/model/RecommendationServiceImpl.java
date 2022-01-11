package com.gr.ssgb.recommendation.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gr.ssgb.common.SearchVO;

@Service
public class RecommendationServiceImpl implements RecommendationService {

	private final RecommendationDAO recommendationDAO;

	@Autowired
	public RecommendationServiceImpl(RecommendationDAO recommendationDAO) {
		this.recommendationDAO = recommendationDAO;
	}

	@Override
	public int insertRecommendation(RecommendationVO vo) {
		return recommendationDAO.insertRecommendation(vo);
	}

	@Override
	public List<RecommendationVO> selectAllRecommendation(SearchVO searchVo) {
		return recommendationDAO.selectAllRecommendation(searchVo);
	}

	@Override
	public RecommendationVO selectByNoRecommendation(int recoNo) {
		return recommendationDAO.selectByNoRecommendation(recoNo);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return recommendationDAO.selectTotalRecord(searchVo);
	}

	@Override
	public int updateRecommendation(RecommendationVO vo) {
		return recommendationDAO.updateRecommendation(vo);
	}

	@Override
	public int deleteRecommendation(int recoNo) {
		return recommendationDAO.deleteRecommendation(recoNo);
	}


	@Override
	public List<RecommendationVO> selectAllMemberRecommendation(SearchVO searchVo) {
		return recommendationDAO.selectAllMemberRecommendation(searchVo);
	}

	@Override
	public List<RecommendationVO> selectAllHostRecommendation(SearchVO searchVo) {
		return recommendationDAO.selectAllHostRecommendation(searchVo);
	}

	@Override
	public int selectTotalMemberRecord(SearchVO searchVo) {
		return recommendationDAO.selectTotalMemberRecord(searchVo);
	}

	@Override
	public int selectTotalHostRecord(SearchVO searchVo) {
		return recommendationDAO.selectTotalHostRecord(searchVo);
	}

	@Transactional
	@Override
	public int reply(RecommendationVO vo) {
		int cnt = recommendationDAO.updateSortNo(vo);
		cnt = recommendationDAO.reply(vo);
		return cnt;
	}


}
