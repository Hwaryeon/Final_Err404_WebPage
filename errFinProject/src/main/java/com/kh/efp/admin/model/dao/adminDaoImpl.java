package com.kh.efp.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.member_band.model.vo.PageInfo;

@Repository
public class adminDaoImpl implements adminDao {
	
	//전체 리스트 조회용 메소드
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, int type) {
		int result = -99;
		switch(type)
		{
			case 1 : result = sqlSession.selectOne("Admin.countAllMember"); break;
			case 2 : result = sqlSession.selectOne("Admin.countAllBand"); break;
			case 3 : result = sqlSession.selectOne("Admin.countReportMember"); break;
			case 4 : result = sqlSession.selectOne("Admin.countReportBand"); break;
			case 5 : result = sqlSession.selectOne("Admin.countBanMember"); break;
			case 6: result = sqlSession.selectOne("Admin.countBanBand"); break;
		}
		return result;
	}
	//전체 검색 리스트 조회용 메소드
	@Override
	public int getSearchListCount(SqlSessionTemplate sqlSession, int type, String keyword) {
		int result = -99;
		switch(type)
		{
			case 1 : result = sqlSession.selectOne("Admin.countSearchMember", keyword); break;
			case 2 : result = sqlSession.selectOne("Admin.countSearchBandByName", keyword); break;
			case 3 : result = sqlSession.selectOne("Admin.countSearchBandByMaster", keyword); break;
		}
		return result;
	}
	@Override
	public List<Object> memberAllList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment) {
		List<Object> memberList = new ArrayList<Object>();
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		memberList = sqlSession.selectList("Admin.selectAllMember", align, rowBounds); 
		
		return memberList;
	}

	@Override
	public List<Object> bandAllList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment) {
		List<Object> bandList = new ArrayList<Object>();
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		bandList = sqlSession.selectList("Admin.selectAllBand", align, rowBounds); 
		
		return bandList;
	}

	@Override
	public List<Object> memberSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword) {
		List<Object> memberSearchList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		memberSearchList = sqlSession.selectList("Admin.searchMember", keyword, rowBounds);
		
		return memberSearchList;
	}

	@Override
	public List<Object> bandSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword, String keywordValue) {
		List<Object> bandSearchList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		if(keywordValue.equals("bandName"))
			bandSearchList = sqlSession.selectList("Admin.searchBandByName", keyword, rowBounds);
		else
			bandSearchList = sqlSession.selectList("Admin.searchBandByMaster", keyword, rowBounds);
		return bandSearchList;
	}

	@Override
	public List<Object> reportMemberList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> reportMemberList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		reportMemberList = sqlSession.selectList("Admin.selectReportMember", rowBounds);
		return reportMemberList;
	}

	@Override
	public List<Object> reportBandList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> reportBandList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		reportBandList = sqlSession.selectList("Admin.selectReportBand", rowBounds);
		return reportBandList;
	}

	@Override
	public List<Object> banMemberList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment) {
		List<Object> banMemberList = new ArrayList<Object>();
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		banMemberList = sqlSession.selectList("Admin.selectBanMember", align, rowBounds);
		
		return banMemberList;
	}

	@Override
	public List<Object> banBandList(SqlSessionTemplate sqlSession, PageInfo pi, String alignment) {
		List<Object> banBandList = new ArrayList<Object>();
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		banBandList = sqlSession.selectList("Admin.selectBanBand", align, rowBounds);
		
		return banBandList;
	}

}
