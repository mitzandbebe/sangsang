package com.gr.ssgb.hostclass.model;

import java.util.List;
import java.util.Map;

public interface HostClassService {
	List<CategoryVO> selectCategoryAll();
	int insertLocation(LocationVO locationVo);
	int insertClass(HostClassVO hostClassVo);
	int insertContents(ContentsVO contentsVo);
	int selectByLNo(LocationVO locationVo);
	int selectByCNo(int lNo);
}
