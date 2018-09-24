package com.kh.efp.login.google.model.service;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface GgService {

	Member insertMember(Member m, Profile pf);

}
