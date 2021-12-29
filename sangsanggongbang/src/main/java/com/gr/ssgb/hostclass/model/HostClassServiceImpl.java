package com.gr.ssgb.hostclass.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HostClassServiceImpl implements HostClassService{
	private final HostClassDAO hostClassDao;

	@Autowired
	public HostClassServiceImpl(HostClassDAO hostClassDao) {
		this.hostClassDao = hostClassDao;
	}

	@Override
	public List<CategoryVO> selectCategoryAll() {
		return hostClassDao.selectCategoryAll();
	}

	@Override
	public int insertClass(HostClassVO classVo) {
		return hostClassDao.insertClass(classVo);
	}
	
	public void fileUpload(String originalfileName, String saveFileName, long fileSize) {
	    Map<String, Object> hm = new HashMap();
	    hm.put("originalfileName", originalfileName);
	    hm.put("saveFileName", saveFileName);
	    hm.put("fileSize", fileSize);
	     
	    hostClassDao.uploadFile(hm);
	}


	
}
