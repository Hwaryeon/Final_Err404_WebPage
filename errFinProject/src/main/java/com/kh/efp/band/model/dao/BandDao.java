package com.kh.efp.band.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.band.model.vo.Attfile;
import com.kh.efp.band.model.vo.Ban;
import com.kh.efp.band.model.vo.BanMemberList;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.MemberBandProfile;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.newPost.model.vo.Boards;

public interface BandDao {

	void insertScehdule(SqlSessionTemplate sqlSession, Scehdule s);

	List<Object> scehduleList(SqlSessionTemplate sqlSession, int bid);

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

	int insertBandModify(SqlSessionTemplate sqlSession, Profile pf);

	void updateBandName(SqlSessionTemplate sqlSession, Band b);

	String selectBandName(SqlSessionTemplate sqlSession, int bid);

	Profile selectProfile(SqlSessionTemplate sqlSession, int bid);

	void deleteBandMember(SqlSessionTemplate sqlSession, int mbid);

	String checkBandOpenStatus(SqlSessionTemplate sqlSession, int bid);

	String selectBandIntro(SqlSessionTemplate sqlSession, int bid);

	ArrayList<BanMemberList> selectBanMemberList(SqlSessionTemplate sqlSession, int bid);

	void deleteBanMember(SqlSessionTemplate sqlSession, int banid);

	void insertBanMember(SqlSessionTemplate sqlSession, Ban b);

	int checkBandCategory(SqlSessionTemplate sqlSession, int bid);

	void updateCategory(SqlSessionTemplate sqlSession, Band b);

	Band selectBand(SqlSessionTemplate sqlSession, int pbid);

	int selectMlevel(SqlSessionTemplate sqlSession, Member_Band mb);

	String selectBstatus(SqlSessionTemplate sqlSession, int bid);

	void insertMember_Band(SqlSessionTemplate sqlSession, Member_Band mb);

	ArrayList<Member_Band> insertMemberList(SqlSessionTemplate sqlSession, int bid);


	void updateMemberStatus(SqlSessionTemplate sqlSession, int mbid);

	void refuseMemberStatus(SqlSessionTemplate sqlSession, int mbid);

	ArrayList<BanMemberList> searchBanMemberList(SqlSessionTemplate sqlSession, Member_Band mb);

	ArrayList<Member_Band> selectMember_BandList2(SqlSessionTemplate sqlSession, Member_Band mb);

	Boards selectBoardDetail(SqlSessionTemplate sqlSession, int boardid);

	ArrayList<Boards> selectRefList(SqlSessionTemplate sqlSession, int boardid);

	Attfile selectAttFile(SqlSessionTemplate sqlSession, int boardid);

	ArrayList<MemberBandProfile> selectMemberBandProfileList(SqlSessionTemplate sqlSession, MemberBandProfile mbp);

	String selectBandCode(SqlSessionTemplate sqlSession, int bid);

	void updateBandCode(SqlSessionTemplate sqlSession, Band b);

	int checkInviteCode(SqlSessionTemplate sqlSession, String code);

	int checkBlock(SqlSessionTemplate sqlSession, Member_Band check);

	void deleteAttFile(SqlSessionTemplate sqlSession, int boardId);

	void updateAttFile(SqlSessionTemplate sqlSession, Attfile af);

	ArrayList<Attfile> selectAttList(SqlSessionTemplate sqlSession, int bid);





}
