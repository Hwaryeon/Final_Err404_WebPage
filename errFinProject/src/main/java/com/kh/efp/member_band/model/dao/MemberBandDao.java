package com.kh.efp.member_band.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member_band.model.vo.BandList;
import com.kh.efp.member_band.model.vo.BoardList;
import com.kh.efp.member_band.model.vo.PageInfo;

public interface MemberBandDao {

	int selectListCount(SqlSessionTemplate sqlSession, int imid);

	ArrayList<BoardList> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi, int imid);

	ArrayList<BandList> selectBandList(SqlSessionTemplate sqlSession, int imid);

	int updateiStatus(SqlSessionTemplate sqlSession, BandList bl);

	Band selectBandinviteCode(SqlSessionTemplate sqlSession, String inviteCode);

}
