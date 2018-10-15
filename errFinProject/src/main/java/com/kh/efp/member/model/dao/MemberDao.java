package com.kh.efp.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.member.model.vo.loginUser;

public interface MemberDao {

	int insertMember(SqlSessionTemplate sqlSession, Member m);

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	int checkmName(SqlSessionTemplate sqlSession, String mName);

	int selectMid(SqlSessionTemplate sqlSession, Member m);

	int insertMemberProfile(SqlSessionTemplate sqlSession, Profile pf);

	Profile selectMemberProfile(SqlSessionTemplate sqlSession, int mid);

	int insertChangedProfile(SqlSessionTemplate sqlSession, Profile pf);

	int selectmPhone(SqlSessionTemplate sqlSession, String mPhone);

	int selectCntEmail(SqlSessionTemplate sqlSession, String mEmail);

	String selectmEmail(SqlSessionTemplate sqlSession, Member m);

	int updateMidmPwd(SqlSessionTemplate sqlSession, Member m);

	int selectAuthmEmail(SqlSessionTemplate sqlSession, Member m);

	int updatemStatus(SqlSessionTemplate sqlSession, int imid);

	loginUser selectLoginUser(SqlSessionTemplate sqlSession, Member m);

	int updatemEmailmPwd(SqlSessionTemplate sqlSession, Member m);

	int updateInfo(SqlSessionTemplate sqlSession, Member m);

}
