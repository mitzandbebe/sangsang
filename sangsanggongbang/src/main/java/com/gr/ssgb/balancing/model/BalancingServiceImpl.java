package com.gr.ssgb.balancing.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.SearchVO;

@Service
public class BalancingServiceImpl implements BalancingService{
	@Autowired
	public BalancingDAO balancingDao;
	
	public List<BalancingVO> selectBalancingAll(SearchVO searchVo) {
		return balancingDao.selectBalancingAll(searchVo);
	}
	
	@Override
	public int selectTotalRecord(SearchVO searachVo) {
		return balancingDao.selectTotalRecord(searachVo);
	}
	


	/*
	@Transactional
	public int insertBoard(BalancingVO vo) {
		return balancingDao.insertBoard(vo);
	}
	
	public List<BalancingVO> selectAll(SearchVO searchVo){
		return balancingDao.selectAll(searchVo);
	}
	@Override
	public int selectTotalRecord(SearchVO searachVo) {
		return balancingDao.selectTotalRecord(searachVo);
	}
	
	public BalancingVO selectByNo(int no){
		return balancingDao.selectByNo(no);
	}
	
	@Override
	public boolean checkPwd(BalancingVO vo) {
		String dbPwd=balancingDao.selectPwd(vo.getNo());
		
		if(dbPwd.equals(vo.getPwd())) {
			return true;
		}else {
			return false;
		}
	}
	public int deleteBoard(int no){
		return balancingDao.deleteBoard(no);
	}
	
	 */
}
