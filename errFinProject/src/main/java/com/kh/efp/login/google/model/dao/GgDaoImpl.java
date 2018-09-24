package com.kh.efp.login.google.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Repository
public class GgDaoImpl implements GgDao{

	@Override
	public Member selectGGMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Login.selectMember", m);
	}

	@Override
	public int insertGGMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Login.insertGGMember", m);
	}

	@Override
	public int insertGGProfile(SqlSessionTemplate sqlSession, Profile pf) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Login.insertProfile", pf);
	}

}
