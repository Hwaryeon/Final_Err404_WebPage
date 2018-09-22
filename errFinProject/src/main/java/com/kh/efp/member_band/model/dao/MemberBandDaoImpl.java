package com.kh.efp.member_band.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.member_band.model.vo.BandList;
import com.kh.efp.member_band.model.vo.BoardList;
import com.kh.efp.member_band.model.vo.PageInfo;

@Repository
public class MemberBandDaoImpl implements MemberBandDao{

	@Override
	public int selectListCount(SqlSessionTemplate sqlSession, int imid) {
		return sqlSession.selectOne("BandList.selectUserBoardList", imid);
	}

	@Override
	public ArrayList<BoardList> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi, int imid) {
		ArrayList<BoardList> list = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("BandList.selectBoardList", imid, rowBounds);
		
		return list;
	}

	@Override
	public ArrayList<BandList> selectBandList(SqlSessionTemplate sqlSession, int imid) {
		ArrayList<BandList> list = null;
		
		list = (ArrayList)sqlSession.selectList("BandList.selectBandList", imid);
		
		return list;
	}

	@Override
	public int updateiStatus(SqlSessionTemplate sqlSession, BandList bl) {
		return sqlSession.update("BandList.updateiStatus", bl);
	}

}
