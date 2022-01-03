package com.gr.ssgb.qa.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class QaServiceImpl implements QaService{
	
	@Autowired
	private QaDAO qaDao;

	@Transactional
	public int insertQa(QaVO vo) {
		return qaDao.insertQa(vo);
	}
	
	@Override
	public List<QaVO> selectQaAll() { 
		return qaDao.selectQaAll();
	}
}
