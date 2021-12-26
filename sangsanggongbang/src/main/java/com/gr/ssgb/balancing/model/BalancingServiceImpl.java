package com.gr.ssgb.balancing.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BalancingServiceImpl implements BalancingService{
	public final BalancingDAO balancingDao;
	
	@Autowired
	private BalancingServiceImpl(BalancingDAO balancingDao){
		this.balancingDao=balancingDao;
	}
	
	@Override
	public List<BalancingVO> selectBalancingAll() {
		return balancingDao.selectBalancingAll();
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
