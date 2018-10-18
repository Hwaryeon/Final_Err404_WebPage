package com.kh.efp.mainPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Profile;

public interface mainDao {

	List<Object> bandList(SqlSessionTemplate sqlSession, int mid);

	List<Object> popContent(SqlSessionTemplate sqlSession);
 
	int insertBand(SqlSessionTemplate sqlSession, Band b);

	int selectBand(SqlSessionTemplate sqlSession, String bname);

	int insertMemberBand(SqlSessionTemplate sqlSession, int bandId, int mid);

	int insertProfile(SqlSessionTemplate sqlSession, Profile pf);
	
	List<Object> recommendContent(SqlSessionTemplate sqlSession, int mid);
}
