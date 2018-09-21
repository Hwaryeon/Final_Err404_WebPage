package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.dao.BandDao;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.member.model.dao.MemberDao;
import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.vo.Member;

@Service
public class BandServiceImpl implements BandService {

	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private BandDao bd;

	@Override
	public int insertScehdule(Scehdule s) {
		int result = -99;
		
		bd.insertScehdule(sqlSession, s);
		
		
		
		
		return result;
	}

	@Override
	public List<Object> scehduleList() {
		
		return bd.scehduleList(sqlSession);
	}

	@Override
	public int deleteScehdule(int did) {
		
		int result = - 99;
		
		bd.deleteScehdule(sqlSession, did);
		
		return result;
	}

	@Override
	public int selectCurrval() {
		
		return bd.selectCurrval(sqlSession);
	}



}
