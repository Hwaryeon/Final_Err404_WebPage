package com.kh.efp.member.model.service;

import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.member.model.vo.loginUser;

public interface MemberService {
	
	Member loginMember(Member m) throws LoginException;

	int checkmName(String mName);

	int insertMember(Member m, Profile pf);

	Profile selectMemberProfile(int mid);

	int insertChangedProfile(Profile pf);

	//int updatemName(Member m);

	Member selectMember(Member m);

	int selectmPhone(String mPhone);

	//int updatemPhone(Member m);

	//int chPwd(Member m);

	//int updatemPwd(Member m);

	int selectCntEmail(String mEmail);


	String selectmEmail(Member m);

	int selectAuthmEmail(Member m);

	int updatemStatus(int imid);

	loginUser loginMember2(Member m) throws LoginException;

	void selectPwd(int mid, String nowPwd, String newPwd) throws LoginException;

	int updatemEmailmPwd(Member m);

	void selectInfo(Member m) throws LoginException;

}
