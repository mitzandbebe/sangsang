package com.gr.ssgb.qa.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QaDAO {
	public int insertQa(QaVO vo);
	List<QaVO> selectQaAll();
}
