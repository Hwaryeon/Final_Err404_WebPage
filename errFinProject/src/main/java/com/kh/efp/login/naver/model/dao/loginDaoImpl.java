package com.kh.efp.login.naver.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Repository
public class loginDaoImpl implements loginDao{

	@Override
	public int insertNaverMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("Login.insertNaverMember", m);
	}

	@Override
	public Member selectNaverMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Login.selectNaverMember", m);
	}

	@Override
	public int insertNaverProfile(SqlSessionTemplate sqlSession, Profile pf) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Login.insertNaverProfile", pf);
	}

}
