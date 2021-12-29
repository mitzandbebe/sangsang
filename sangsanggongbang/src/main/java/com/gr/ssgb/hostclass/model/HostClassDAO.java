package com.gr.ssgb.hostclass.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HostClassDAO {
	List<CategoryVO> selectCategoryAll();
	int insertClass(HostClassVO classVo);
	int uploadFile(Map<String, Object> map);
}
