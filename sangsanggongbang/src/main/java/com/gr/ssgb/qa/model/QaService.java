package com.gr.ssgb.qa.model;

import com.gr.ssgb.hostclass.model.HostClassVO;

import java.util.List;

public interface QaService {
	List<QaVO> selectQaAll();
	List<HostClassVO> hostClassSelect();
	public int insertQa(QaVO vo);
	public int updateQa(QaVO vo);
	public int deleteQa(int qaNo);
	
}


