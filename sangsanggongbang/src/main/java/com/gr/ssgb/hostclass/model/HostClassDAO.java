package com.gr.ssgb.hostclass.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HostClassDAO {
	List<CategoryVO> selectCategoryAll();
	int insertLocation(LocationVO locationVo);
	int insertClass(HostClassVO hostClassVo);
	int insertContents(ContentsVO contentsVo);
	int selectByLNo(LocationVO locationVo);
	int selectByCNo(int lNo);
}
