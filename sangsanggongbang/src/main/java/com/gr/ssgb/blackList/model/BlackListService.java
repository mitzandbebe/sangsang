package com.gr.ssgb.blackList.model;

import java.util.List;

public interface BlackListService {
	List<BlackListVO> selectBlackListAll(int hno);
}
