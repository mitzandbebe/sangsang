package com.gr.ssgb.qa.model;

import java.util.List;

public interface QaService {
	List<QaVO> selectQaAll();
	public int insertQa(QaVO vo);
	
}


