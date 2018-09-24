package com.kh.efp.login.FB.model.service;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface FBService {

	Member insertFBMember(Member m, Profile pf);

}
