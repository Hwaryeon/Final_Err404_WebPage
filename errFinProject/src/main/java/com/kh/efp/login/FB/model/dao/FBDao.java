package com.kh.efp.login.FB.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface FBDao {

	Member selectFBMember(SqlSessionTemplate sqlSession, Member m);

	int insertFBMember(SqlSessionTemplate sqlSession, Member m);

	int insertFBProfile(SqlSessionTemplate sqlSession, Profile pf);

}
