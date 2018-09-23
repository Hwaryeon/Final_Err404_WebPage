package com.kh.efp.login.naver.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface loginDao {

	int insertNaverMember(SqlSessionTemplate sqlSession, Member m);

	Member selectNaverMember(SqlSessionTemplate sqlSession, Member m);

	int insertNaverProfile(SqlSessionTemplate sqlSession, Profile pf);

}
