package com.kh.efp.login.naver.model.service;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface loginService {

	Member insertNaverMember(Member m, Profile pf);

}
