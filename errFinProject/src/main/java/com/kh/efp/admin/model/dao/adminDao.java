package com.kh.efp.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public interface adminDao {
	List<Object> memberAllList(SqlSessionTemplate sqlSession, String alignment);

	List<Object> bandAllList(SqlSessionTemplate sqlSession, String alignment);

	List<Object> memberSearchList(SqlSessionTemplate sqlSession, String keyword);

	List<Object> bandSearchList(SqlSessionTemplate sqlSession, String keyword, String keywordValue);

	List<Object> reportMemberList(SqlSessionTemplate sqlSession);

	List<Object> reportBandList(SqlSessionTemplate sqlSession);

	List<Object> banMemberList(SqlSessionTemplate sqlSession, String alignment);

	List<Object> banBandList(SqlSessionTemplate sqlSession, String alignment); 
}
