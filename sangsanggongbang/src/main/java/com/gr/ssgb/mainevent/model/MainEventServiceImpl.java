package com.gr.ssgb.mainevent.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.common.SearchVO;

@Service
public class MainEventServiceImpl implements MainEventService{

	private final MainEventDAO mainEventDAO;
	
	@Autowired
	public MainEventServiceImpl(MainEventDAO mainEventDAO) {
		this.mainEventDAO = mainEventDAO;
	}

	@Override
	public int insertEvent(MainEventVO vo) {
		return mainEventDAO.insertEvent(vo);
	}

	@Override
	public List<MainEventVO> selectAll(SearchVO searchVo) {
		return mainEventDAO.selectAll(searchVo);
	}

	@Override
	public MainEventVO selectByNo(int newsNo) {
		return mainEventDAO.selectByNo(newsNo);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return mainEventDAO.selectTotalRecord(searchVo);
	}

	@Override
	public List<MainEventVO> selectByTop() {
		return mainEventDAO.selectByTop();
	}
}
