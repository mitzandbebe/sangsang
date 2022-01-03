package com.gr.ssgb.mainevent.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainEventServiceImpl implements MainEventService{

	@Autowired
	private MainEventDAO mainEventDAO;

	@Override
	public int insertEvent(MainEventVO vo) {
		return mainEventDAO.insertEvent(vo);
	}
}
