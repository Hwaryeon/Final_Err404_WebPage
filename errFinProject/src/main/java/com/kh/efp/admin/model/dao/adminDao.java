package com.kh.efp.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public interface adminDao {
	List<Object> memberAllList(SqlSessionTemplate sqlSession, String alignment);

	List<Object> bandAllList(SqlSessionTemplate sqlSession);

	List<Object> memberSearchList(SqlSessionTemplate sqlSession, String keyword);

	List<Object> bandSearchList(SqlSessionTemplate sqlSession, String keyword, String keywordValue);
}
