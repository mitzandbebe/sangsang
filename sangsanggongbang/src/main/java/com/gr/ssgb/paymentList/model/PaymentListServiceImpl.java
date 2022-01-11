package com.gr.ssgb.paymentList.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.PaymentSearchVO;

@Service
public class PaymentListServiceImpl implements PaymentListService{
	public final PaymentListDAO paymentListDao;
	
	@Autowired
	private PaymentListServiceImpl(PaymentListDAO paymentListDao){
		this.paymentListDao=paymentListDao;
	}
	
	@Override
	public List<Map<String, Object>> selectPaymentListAll(PaymentSearchVO paySearchVo) {
		return paymentListDao.selectPaymentListAll(paySearchVo);
	}

	@Override
	public int selectTotalPayment(int mNo) {
		return paymentListDao.selectTotalPayment(mNo);
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
