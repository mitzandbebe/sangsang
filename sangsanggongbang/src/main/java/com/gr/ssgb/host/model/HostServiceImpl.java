package com.gr.ssgb.host.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HostServiceImpl implements HostService{
	private final HostDAO hostDao;
	
	@Autowired
	public HostServiceImpl(HostDAO hostDao) {
		this.hostDao = hostDao;
	}

	@Override
	public int checkIdPwd(String hId, String hPwd) {
		
		int result=0;
		String dbPwd = hostDao.checkIdPwd(hId, hPwd);
		if(dbPwd==null || dbPwd.isEmpty()){ 
			result = ID_NONE;
		}else{ 
			if(hPwd.equals(dbPwd)){ 
				result = LOGIN_OK;
			}else{ 
				result = PWD_DISAGREE;
			}
		}
		return result;
	}

	@Override
	public int selectHostCnt(String hId) {
		return hostDao.selectHostCnt(hId);
	}

	@Override
	public HostVO selectHostById(String hId) {
		return hostDao.selectHostById(hId);
	}

	@Override
	public int insertHost(HostVO vo) {
		return hostDao.insertHost(vo);
	}
	
}
