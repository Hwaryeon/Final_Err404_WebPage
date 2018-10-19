package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.dao.BandDao;
import com.kh.efp.band.model.vo.Ban;
import com.kh.efp.band.model.vo.BanMemberList;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.member.model.dao.MemberDao;
import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

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
	public List<Object> scehduleList(int bid) {
		
		return bd.scehduleList(sqlSession, bid);
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

	@Override
	public int insertBandModify(Profile pf) {

		int result = bd.insertBandModify(sqlSession, pf);
		
		return result;
	}

	@Override
	public void updateBandName(Band b) {
		
		bd.updateBandName(sqlSession, b);
		
	}

	@Override
	public String selectBandName(int bid) {
		return bd.selectBandName(sqlSession, bid);
	}

	@Override
	public Profile selectProfile(int bid) {
		return bd.selectProfile(sqlSession, bid);
	}

	@Override
	public void deleteBandMember(int mbid) {
		bd.deleteBandMember(sqlSession, mbid);
		
	}

	@Override
	public String checkBandOpenStatus(int bid) {
		return bd.checkBandOpenStatus(sqlSession, bid);
	}

	@Override
	public String selectBandIntro(int bid) {
		return bd.selectBandIntro(sqlSession, bid);
	}

	@Override
	public ArrayList<BanMemberList> selectBanMemberList(int bid) {
		return bd.selectBanMemberList(sqlSession, bid);
	}

	@Override
	public void deleteBanMember(int banid) {
		bd.deleteBanMember(sqlSession, banid);
	}

	@Override
	public void insertBanMember(Ban b) {
		bd.insertBanMember(sqlSession, b);
	}

	@Override
	public int checkBandCategory(int bid) {
		
		return bd.checkBandCategory(sqlSession, bid);
	}

	@Override
	public void updateCategory(Band b) {
		
		bd.updateCategory(sqlSession, b);
		
	}

	@Override
	public Band selectBand(int pbid) {
		// TODO Auto-generated method stub
		return bd.selectBand(sqlSession, pbid);
	}

	@Override
	public int selectMlevel(Member_Band mb) {
		return bd.selectMlevel(sqlSession, mb);
	}

	@Override
	public String selectBstatus(int bid) {
		return bd.selectBstatus(sqlSession, bid);
	}

	@Override
	public void insertMember_Band(Member_Band mb) {
		bd.insertMember_Band(sqlSession, mb);
	}

	@Override
	public ArrayList<Member_Band> insertMemberList(int bid) {
		return bd.insertMemberList(sqlSession, bid);
	}

	@Override
	public void updateMemberStatus(int mbid) {
		bd.updateMemberStatus(sqlSession, mbid);
	}

	@Override
	public void refuseMemberStatus(int mbid) {
		bd.refuseMemberStatus(sqlSession, mbid);
	}

	@Override
	public ArrayList<BanMemberList> searchBanMemberList(Member_Band mb) {
		return bd.searchBanMemberList(sqlSession, mb);
	}

	@Override
	public ArrayList<Member_Band> selectMember_BandList2(Member_Band mb) {
		return bd.selectMember_BandList2(sqlSession, mb);
	}



//	@Override
//	public Band selectBand(int pbid) {
//		// TODO Auto-generated method stub
//		return bd.selectBand(sqlSession, pbid);
//	}
}
