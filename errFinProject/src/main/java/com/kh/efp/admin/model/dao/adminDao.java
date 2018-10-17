package com.kh.efp.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.member_band.model.vo.PageInfo;

public interface adminDao {
	List<Object> memberAllList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment);

	List<Object> bandAllList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment);

	List<Object> memberSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword);

	List<Object> bandSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword, String keywordValue);

	List<Object> reportMemberList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Object> reportBandList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Object> banMemberList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment);

	List<Object> banBandList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment);

	int getListCount(SqlSessionTemplate sqlSession, int type);

	int getSearchListCount(SqlSessionTemplate sqlSession, int type, String keyword); 
}
