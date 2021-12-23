package com.gr.ssgb.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	private final MemberDAO memberDao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberDao) {
		super();
		this.memberDao = memberDao;
	}
	@Override
	public int insertMember(MemberVO vo) {
		return memberDao.insertMember(vo);
	}

	@Override
	public int selectBySnsId(String snsaccount) {
		return memberDao.selectBySnsId(snsaccount);
	}

	@Override
	public int insertSnsMember(MemberVO memberVo) {
		return memberDao.insertSnsMember(memberVo);
	}
	public int checkIdPwd(String mId, String pwd) {
		int result=0;
		String dbPwd = memberDao.checkIdPwd(mId);
		if(dbPwd==null || dbPwd.isEmpty()){ 
			result = ID_NONE;
		}else{ 
			if(pwd.equals(dbPwd)){ 
				result = LOGIN_OK;
			}else{ 
				result = PWD_DISAGREE;
			}
		}
		return result;
	}
	
}
