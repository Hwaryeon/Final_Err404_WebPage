package com.kh.efp.login.FB.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.login.FB.model.dao.FBDao;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Service
public class FBServiceImpl implements FBService{
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private FBDao fbd;
	
	@Override
	public Member insertFBMember(Member m, Profile pf) {
		Member loginUser = fbd.selectFBMember(sqlSession, m); 
		
		if(loginUser == null){
			int result1 = fbd.insertFBMember(sqlSession, m);
			loginUser = fbd.selectFBMember(sqlSession, m);
			
			pf.setMid(loginUser.getMid());
			int result2 = fbd.insertFBProfile(sqlSession, pf);
		}
		
		return loginUser;
	}

}
