package com.kh.efp.login.FB.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Repository
public class FBDaoImpl implements FBDao{

	@Override
	public Member selectFBMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Login.selectMember", m);
	}

	@Override
	public int insertFBMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Login.insertFBMember", m);
	}

	@Override
	public int insertFBProfile(SqlSessionTemplate sqlSession, Profile pf) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Login.insertProfile", pf);
	}

}
