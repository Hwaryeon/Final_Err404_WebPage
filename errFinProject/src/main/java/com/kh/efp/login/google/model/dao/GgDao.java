package com.kh.efp.login.google.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface GgDao {

	Member selectGGMember(SqlSessionTemplate sqlSession, Member m);

	int insertGGMember(SqlSessionTemplate sqlSession, Member m);

	int insertGGProfile(SqlSessionTemplate sqlSession, Profile pf);

}
