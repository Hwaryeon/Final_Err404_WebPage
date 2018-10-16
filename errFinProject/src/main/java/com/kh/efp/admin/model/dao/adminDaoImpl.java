package com.kh.efp.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class adminDaoImpl implements adminDao {

	@Override
	public List<Object> memberAllList(SqlSessionTemplate sqlSession, String alignment) {
		List<Object> memberList = new ArrayList<Object>();
		//System.out.println("dao alignment = " + alignment);
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		memberList = sqlSession.selectList("Admin.selectAllMember", align); 
		
		return memberList;
	}

	@Override
	public List<Object> bandAllList(SqlSessionTemplate sqlSession, String alignment) {
		List<Object> bandList = new ArrayList<Object>();
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		bandList = sqlSession.selectList("Admin.selectAllBand", align);
		
		return bandList;
	}

	@Override
	public List<Object> memberSearchList(SqlSessionTemplate sqlSession, String keyword) {
		List<Object> memberSearchList = new ArrayList<Object>();
		memberSearchList = sqlSession.selectList("Admin.searchMember", keyword);
		
		return memberSearchList;
	}

	@Override
	public List<Object> bandSearchList(SqlSessionTemplate sqlSession, String keyword, String keywordValue) {
		List<Object> bandSearchList = new ArrayList<Object>();
		
		if(keywordValue.equals("bandName"))
			bandSearchList = sqlSession.selectList("Admin.searchBandByName", keyword);
		else
			bandSearchList = sqlSession.selectList("Admin.searchBandByMaster", keyword);
		return bandSearchList;
	}

	@Override
	public List<Object> reportMemberList(SqlSessionTemplate sqlSession) {
		List<Object> reportMemberList = new ArrayList<Object>();
		
		reportMemberList = sqlSession.selectList("Admin.selectReportMember");
		return reportMemberList;
	}

	@Override
	public List<Object> reportBandList(SqlSessionTemplate sqlSession) {
		List<Object> reportBandList = new ArrayList<Object>();
		
		reportBandList = sqlSession.selectList("Admin.selectReportBand");
		return reportBandList;
	}

	@Override
	public List<Object> banMemberList(SqlSessionTemplate sqlSession, String alignment) {
		List<Object> banMemberList = new ArrayList<Object>();
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		banMemberList = sqlSession.selectList("Admin.selectBanMember", align);
		
		return banMemberList;
	}

	@Override
	public List<Object> banBandList(SqlSessionTemplate sqlSession, String alignment) {
		List<Object> banBandList = new ArrayList<Object>();
		Map<String, Object> align = new HashMap<String, Object>();
		align.put("alignment", alignment);
		banBandList = sqlSession.selectList("Admin.selectBanBand", align);
		
		return banBandList;
	}
}
