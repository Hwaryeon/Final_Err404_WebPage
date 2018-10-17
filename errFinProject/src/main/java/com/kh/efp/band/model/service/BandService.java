package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.efp.band.model.vo.Ban;
import com.kh.efp.band.model.vo.BanMemberList;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

public interface BandService {

	int insertScehdule(Scehdule s);

	List<Object> scehduleList();

	int deleteScehdule(int did);

	int selectCurrval();

	void updateScehdule(Scehdule s);

	void updateBandOpenStatus(Band b);

	ArrayList<Member_Band> selectMember_BandList(Member_Band mb);

	void insertBandMultiLeader(int mbid);

	void deleteBandMultiLeader(int mbid);

	ArrayList<Member_Band> searchMember_BandList(Member_Band mb);

	void changeBandLeader(Member_Band mb);

	void secessionBand(Member_Band mb);

	void deleteBand(int bid);

	void updateBandIntro(Band b);

	int insertBandModify(Profile pf);

	void updateBandName(Band b);

	String selectBandName(int bid);

	Profile selectProfile(int bid);

	void deleteBandMember(int mbid);

	String checkBandOpenStatus(int bid);

	String selectBandIntro(int bid);

	ArrayList<BanMemberList> selectBanMemberList(int bid);

	void deleteBanMember(int banid);

	void insertBanMember(Ban b);

	int checkBandCategory(int bid);

	void updateCategory(Band b);

	Band selectBand(int pbid);

	int selectMlevel(Member_Band mb);

	String selectBstatus(int bid);

	void insertMember_Band(Member_Band mb);

	ArrayList<Member_Band> insertMemberList(int bid);

	void updateMemberStatus(int mbid);

	void refuseMemberStatus(int mbid);

	


}
