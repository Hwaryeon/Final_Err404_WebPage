package com.kh.efp.band.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.member_band.model.vo.BoardList;

@Repository
public class BandDaoImpl implements BandDao{

	@Override
	public void insertScehdule(SqlSessionTemplate sqlSession, Scehdule s) {
		//System.out.println("BandDaoImpl 호출됨..");
		
		sqlSession.insert("Scehdule.insertScehdule", s);
		
	}

	@Override
	public List<Object> scehduleList(SqlSessionTemplate sqlSession) {
		
		List<Object> objectList = new ArrayList<Object>(sqlSession.selectList("Scehdule.scehduleList"));
		
		
		return objectList;
	}

	@Override
	public void deleteScehdule(SqlSessionTemplate sqlSession, int did) {
		
		System.out.println("BandDaoImpl 호출됨..");
		
		sqlSession.delete("Scehdule.deleteScehdule", did);
		
		
	}

	@Override
	public int selectCurrval(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("Scehdule.selectCurrval");
	}

	@Override
	public void updateScehdule(SqlSessionTemplate sqlSession, Scehdule s) {
		
		sqlSession.update("Scehdule.updateScehdule", s);
		
	}

	@Override
	public void updateBandOpenStatus(SqlSessionTemplate sqlSession, Band b) {
		
		sqlSession.update("Band.updateBandOpenStatus", b);
		
	}

	@Override
	public ArrayList<Member_Band> selectMember_BandList(SqlSessionTemplate sqlSession, Member_Band mb) {

		ArrayList<Member_Band> list = null;
		
		list = (ArrayList)sqlSession.selectList("Band.selectMember_BandList", mb);
		
		return list;
		
	}

	@Override
	public void insertBandMultiLeader(SqlSessionTemplate sqlSession, int mbid) {
		
		sqlSession.update("Band.insertBandMultiLeader", mbid);
		
	}

	@Override
	public void deleteBandMultiLeader(SqlSessionTemplate sqlSession, int mbid) {
		sqlSession.update("Band.deleteBandMultiLeader", mbid);
		
	}

	@Override
	public ArrayList<Member_Band> searchMember_BandList(SqlSessionTemplate sqlSession, Member_Band mb) {
		ArrayList<Member_Band> list = null;
		
		list = (ArrayList)sqlSession.selectList("Band.searchMember_BandList", mb);
		
		return list;
	}

	@Override
	public void changeBandLeader(SqlSessionTemplate sqlSession, Member_Band mb) {

		sqlSession.update("Band.changeBandLeader_2", mb);
		
		sqlSession.update("Band.changeBandLeader", mb);
		
	}

	@Override
	public void secessionBand(SqlSessionTemplate sqlSession, Member_Band mb) {
		
		sqlSession.update("Band.secessionBand", mb);
		
	}

	@Override
	public void deleteBand(SqlSessionTemplate sqlSession, int bid) {
		sqlSession.update("Band.deleteBand", bid);
		
	}

	@Override
	public void updateBandIntro(SqlSessionTemplate sqlSession, Band b) {
		sqlSession.update("Band.updateBandIntro", b);
		
	}

	@Override
	public int insertBandModify(SqlSessionTemplate sqlSession, Profile pf) {
		return sqlSession.insert("Band.insertBandModify", pf);
	}

	@Override
	public void updateBandName(SqlSessionTemplate sqlSession, Band b) {
		
		sqlSession.update("Band.updateBandName", b);
		
	}

	@Override
	public String selectBandName(SqlSessionTemplate sqlSession, int bid) {
		return sqlSession.selectOne("Band.selectBandName", bid);
	}

	@Override
	public Profile selectProfile(SqlSessionTemplate sqlSession, int bid) {
		return sqlSession.selectOne("Band.selectProfile", bid);
	}

	@Override
	public void deleteBandMember(SqlSessionTemplate sqlSession, int mbid) {
		sqlSession.update("Band.deleteBandMember", mbid);
	}

	@Override
	public String checkBandOpenStatus(SqlSessionTemplate sqlSession, int bid) {

		return sqlSession.selectOne("Band.checkBandOpenStatus", bid);	
	}

	@Override
	public String selectBandIntro(SqlSessionTemplate sqlSession, int bid) {
		return sqlSession.selectOne("Band.selectBandIntro", bid);
	}


	
	
	
}
