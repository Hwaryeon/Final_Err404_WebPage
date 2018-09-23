package com.kh.efp.login.naver.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.efp.login.naver.model.dao.loginDao;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Service
public class loginServiceImpl implements loginService{
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private loginDao ld;
	
	
	@Override
	@Transactional
	public Member insertNaverMember(Member m, Profile pf) {
		int result = ld.insertNaverMember(sqlSession, m);
		
		Member member = ld.selectNaverMember(sqlSession, m);
		
		pf.setMid(member.getMid());
		
		int result2 = ld.insertNaverProfile(sqlSession, pf);
		
		return member;
	}

}
