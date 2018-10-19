package com.kh.efp.member_band.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member_band.model.dao.MemberBandDao;
import com.kh.efp.member_band.model.vo.BandList;
import com.kh.efp.member_band.model.vo.BoardList;
import com.kh.efp.member_band.model.vo.PageInfo;


@Service
public class MemberBandServiceImpl implements MemberBandService{
	
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private MemberBandDao mbd;
	
	@Override
	public int selectListCount(int imid) {
		return mbd.selectListCount(sqlSession, imid);
	}

	@Override
	public ArrayList<BoardList> selectBoardList(PageInfo pi, int imid) {
		return mbd.selectBoardList(sqlSession, pi, imid);
	}

	@Override
	public ArrayList<BandList> selectBandList(int imid) {
		return mbd.selectBandList(sqlSession, imid);
	}

	@Override
	public int updateiStatus(BandList bl) {
		return mbd.updateiStatus(sqlSession, bl);
	}

	@Override
	public Band selectBandinviteCode(String inviteCode) {
		return mbd.selectBandinviteCode(sqlSession, inviteCode);
	}

}
