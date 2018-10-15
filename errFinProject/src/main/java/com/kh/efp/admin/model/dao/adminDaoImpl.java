package com.kh.efp.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class adminDaoImpl implements adminDao {

	@Override
	public List<Object> memberAllList(SqlSessionTemplate sqlSession, String alignment) {
		List<Object> memberList = new ArrayList<Object>();
		System.out.println("dao alignment = " + alignment);
		memberList = sqlSession.selectList("Admin.selectAllMember", alignment);
		
		return memberList;
	}

	@Override
	public List<Object> bandAllList(SqlSessionTemplate sqlSession) {
		List<Object> bandList = new ArrayList<Object>();
		bandList = sqlSession.selectList("Admin.selectAllBand");
		
		return bandList;
	}

	@Override
	public List<Object> memberSearchList(SqlSessionTemplate sqlSession, String keyword) {
		List<Object> memberSearchList = new ArrayList<Object>();
		memberSearchList = sqlSession.selectList("Admin.searchMember", keyword);
		
		return memberSearchList;
	}

	@Override
	public List<Object> bandSearchList(SqlSessionTemplate sqlSession, String keyword, String keywordValue) {
		List<Object> bandSearchList = new ArrayList<Object>();
		
		if(keywordValue.equals("bandName"))
			bandSearchList = sqlSession.selectList("Admin.searchBandByName", keyword);
		else
			bandSearchList = sqlSession.selectList("Admin.searchBandByMaster", keyword);
		return bandSearchList;
	}
}
