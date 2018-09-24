package com.kh.efp.login.google.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.login.google.model.dao.GgDao;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Service
public class GgServiceImpl implements GgService{
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private GgDao gd;
	

	@Override
	public Member insertMember(Member m, Profile pf) {
		Member loginUser = gd.selectGGMember(sqlSession, m); 
		
		if(loginUser == null){
			int result1 = gd.insertGGMember(sqlSession, m);
			loginUser = gd.selectGGMember(sqlSession, m);
			
			pf.setMid(loginUser.getMid());
			int result2 = gd.insertGGProfile(sqlSession, pf);
		}
		
		return loginUser;
	}

}
