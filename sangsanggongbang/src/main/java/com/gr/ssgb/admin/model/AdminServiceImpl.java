package com.gr.ssgb.admin.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
	private AdminDAO adminDao;
	
	@Autowired
	public AdminServiceImpl(AdminDAO adminDao) {
		super();
		this.adminDao = adminDao;
	}

	@Override
	public int checkPwd(AdminVO vo) {
		String dbPwd = adminDao.checkPwd(vo);
		int result=0;
		if(dbPwd==null || dbPwd.isEmpty()){ 
			result = ID_NONE;
		}else{ 
			if(vo.getAdPwd().equals(dbPwd)){ 
				result = LOGIN_OK;
			}else{ 
				result = PWD_DISAGREE;
			}
		}
		return result;
	}

	@Override
	public Integer selectTotalProfit(MonthVO monVo) {
		return adminDao.selectTotalProfit(monVo);
	}

	
	
}
