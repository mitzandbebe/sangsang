package com.gr.ssgb.qa.model;


import java.util.List;

public interface QaService {
	List<QaVO> selectQaAll(QaVO vo);
	public int insertQa(QaVO vo);
	public int updateQa(QaVO vo);
	public int deleteQa(int qaNo);
	
}


