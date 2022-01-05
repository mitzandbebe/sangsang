package com.gr.ssgb.hostclass.model;

import java.util.List;
import java.util.Map;

public interface HostClassService {
	List<CategoryVO> selectCategoryAll();
	int insertLocation(LocationVO locationVo);
	int insertClass(HostClassVO hostClassVo);
	int insertContents(ContentsVO contentsVo);
	List<LocationVO> selectBylocation(LocationVO locationVo);
	int selectByLNo(LocationVO locationVo);
	int selectByCNo(HostClassVO hostClassVo);
	List<HostClassVO> selectClassAll();
	String selectThumbnail(int cNo);
	List<Map<String,Object>> selectClassAllContents();
	List<Map<String,Object>> selectClassbyCNo(int cNo);
	List<Map<String,Object>> selectClassCategory(String categoryName);
}
