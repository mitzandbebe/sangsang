package com.gr.ssgb.hostclass.model;

import java.util.List;

public interface HostClassService {
	List<CategoryVO> selectCategoryAll();
	int insertClass(HostClassVO classVo);
	void fileUpload(String originalfileName,String saveFileName,long fileSize);
}
