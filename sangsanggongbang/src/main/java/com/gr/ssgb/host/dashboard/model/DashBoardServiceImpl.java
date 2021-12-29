package com.gr.ssgb.host.dashboard.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DashBoardServiceImpl implements DashBoardService{
	@Autowired
	public DashBoardDAO dashBoardDao;

	@Override
	public String DashBoardMain() {
		return dashBoardDao.DashBoardMain();
	}
	

}
