package com.kh.efp.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.admin.model.dao.adminDao;

@Service
public class adminServiceImpl implements adminService {
	
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private adminDao ad;

	@Override
	public List<Object> memberAllList(String alignment) {
		return ad.memberAllList(sqlSession, alignment);
	}
	
	@Override
	public List<Object> bandAllList(String alignment) {
		return ad.bandAllList(sqlSession, alignment);
	}

	@Override
	public List<Object> memberSearchList(String keyword) {
		return ad.memberSearchList(sqlSession, keyword); 
	}

	@Override
	public List<Object> bandSearchList(String keyword, String keywordValue) { 
		return ad.bandSearchList(sqlSession, keyword, keywordValue);
	} 

	@Override
	public List<Object> reportMemberList() {
		return ad.reportMemberList(sqlSession);
	}

	@Override
	public List<Object> reportBandList() {
		return ad.reportBandList(sqlSession);
	}

	@Override
	public List<Object> banMemberList(String alignment) {
		return ad.banMemberList(sqlSession, alignment);
	}

	@Override
	public List<Object> banBandList(String alignment) {
		return ad.banBandList(sqlSession, alignment);
	}
}
