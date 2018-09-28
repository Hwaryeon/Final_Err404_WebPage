
package com.kh.efp.band.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.member.model.vo.Member;

public interface BandDao {

	void insertScehdule(SqlSessionTemplate sqlSession, Scehdule s);

	List<Object> scehduleList(SqlSessionTemplate sqlSession);

	void deleteScehdule(SqlSessionTemplate sqlSession, int did);

	int selectCurrval(SqlSessionTemplate sqlSession);

	void updateScehdule(SqlSessionTemplate sqlSession, Scehdule s);

	void updateBandOpenStatus(SqlSessionTemplate sqlSession, Band b);

	ArrayList<Member_Band> selectMember_BandList(SqlSessionTemplate sqlSession, Member_Band mb);

	void insertBandMultiLeader(SqlSessionTemplate sqlSession, int mbid);

	void deleteBandMultiLeader(SqlSessionTemplate sqlSession, int mbid);

	ArrayList<Member_Band> searchMember_BandList(SqlSessionTemplate sqlSession, Member_Band mb);

	void changeBandLeader(SqlSessionTemplate sqlSession, Member_Band mb);

	void secessionBand(SqlSessionTemplate sqlSession, Member_Band mb);

	void deleteBand(SqlSessionTemplate sqlSession, int bid);

	void updateBandIntro(SqlSessionTemplate sqlSession, Band b);




}
