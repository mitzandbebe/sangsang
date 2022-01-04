package com.gr.ssgb.host.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HostDAO {

	String checkIdPwd(String hId, String hPwd);

	int selectHostCnt(String hId);

	HostVO selectHostById(String hId);

	int insertHost(HostVO vo);

}
