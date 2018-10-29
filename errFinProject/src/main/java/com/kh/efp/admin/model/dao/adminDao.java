package com.kh.efp.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.member_band.model.vo.PageInfo;

public interface adminDao {  
	List<Object> memberAllList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Object> bandAllList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Object> memberSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword);

	List<Object> bandSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword, String keywordValue);

	List<Object> reportMemberList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Object> showReportMember(SqlSessionTemplate sqlSession, PageInfo pi, int mid); 
	
	List<Object> reportBandList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Object> showReportBand(SqlSessionTemplate sqlSession, PageInfo pi, int bid);
	
	List<Object> banMemberList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Object> banBandList(SqlSessionTemplate sqlSession, PageInfo pi);

	int getListCount(SqlSessionTemplate sqlSession, int type);

	int getSearchListCount(SqlSessionTemplate sqlSession, int type, String keyword);

	int getListCount2(SqlSessionTemplate sqlSession, int i, int mid);

	int insertBlackMember(SqlSessionTemplate sqlSession, int cid, String banReason);

	void updateMember(SqlSessionTemplate sqlSession, int cid);

	void updateMemberBand(SqlSessionTemplate sqlSession, int cid);

	int insertBlackBand(SqlSessionTemplate sqlSession, int bid, String banReason);

	void updateBand(SqlSessionTemplate sqlSession, int bid);

	
}
