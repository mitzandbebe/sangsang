package com.gr.ssgb.blackList.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BlackListDAO {
	List<BlackListVO> selectBlackListAll(int hno);
}
