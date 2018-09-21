package com.kh.efp.member.model.service;

import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface MemberService {
	
	Member loginMember(Member m) throws LoginException;

	int checkmName(String mName);

	int insertMember(Member m, Profile pf);
}
