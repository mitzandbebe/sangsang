package com.gr.ssgb.recommendation.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	public List<RecommendationVO> selectAllRecommendation(RecommendationVO recommendationVo) {
		return recommendationDAO.selectAllRecommendation(recommendationVo);
	}

	@Override
	public RecommendationVO selectByNoRecommendation(int recoNo) {
		return recommendationDAO.selectByNoRecommendation(recoNo);
	}

	@Override
	public int selectTotalRecord(RecommendationVO recommendationVo) {
		return recommendationDAO.selectTotalRecord(recommendationVo);
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
	public List<RecommendationVO> selectAllMemberRecommendation(RecommendationVO recommendationVo) {
		return recommendationDAO.selectAllMemberRecommendation(recommendationVo);
	}

	@Override
	public List<RecommendationVO> selectAllHostRecommendation(RecommendationVO recommendationVo) {
		return recommendationDAO.selectAllHostRecommendation(recommendationVo);
	}

	@Override
	public int selectTotalMemberRecord(RecommendationVO recommendationVo) {
		return recommendationDAO.selectTotalMemberRecord(recommendationVo);
	}

	@Override
	public int selectTotalHostRecord(RecommendationVO recommendationVo) {
		return recommendationDAO.selectTotalHostRecord(recommendationVo);
	}

	@Transactional
	@Override
	public int reply(RecommendationVO vo) {
		int cnt = recommendationDAO.updateSortNo(vo);
		cnt = recommendationDAO.reply(vo);
		return cnt;
	}

	@Override
	public int deleteRecommendationR(int recoNo) {
		return recommendationDAO.deleteRecommendationR(recoNo);
	}

}