package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.dao.BandDao;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;
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

	@Override
	public void updateScehdule(Scehdule s) {
		
		bd.updateScehdule(sqlSession, s);
		
	}


	@Override
	public void updateBandOpenStatus(Band b) {

		bd.updateBandOpenStatus(sqlSession, b);
		
	}

	@Override
	public ArrayList<Member_Band> selectMember_BandList(Member_Band mb) {

		return bd.selectMember_BandList(sqlSession, mb);
		
	}

	@Override
	public void insertBandMultiLeader(int mbid) {
		
		bd.insertBandMultiLeader(sqlSession, mbid);
		
		
	}

	@Override
	public void deleteBandMultiLeader(int mbid) {
		bd.deleteBandMultiLeader(sqlSession, mbid);
		
	}


	@Override
	public ArrayList<Member_Band> searchMember_BandList(Member_Band mb) {
		return bd.searchMember_BandList(sqlSession, mb);
	}

	@Override
	public void changeBandLeader(Member_Band mb) {
		bd.changeBandLeader(sqlSession, mb);		
	}

	@Override
	public void secessionBand(Member_Band mb) {
		
		bd.secessionBand(sqlSession, mb);
		
	}

	@Override
	public void deleteBand(int bid) {

		bd.deleteBand(sqlSession, bid);
	}

	@Override
	public void updateBandIntro(Band b) {
		bd.updateBandIntro(sqlSession, b);
	}




}
