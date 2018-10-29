package com.kh.efp.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.admin.model.dao.adminDao;
import com.kh.efp.member_band.model.vo.PageInfo;

@Service
public class adminServiceImpl implements adminService { 
	
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private adminDao ad;
	
	@Override
	public int getlistCount(int type) {
		int listCount = ad.getListCount(sqlSession, type);
		return listCount;
	}
	
	@Override
	public int getSearchlistCount(int type, String keyword) {
		int listCount = ad.getSearchListCount(sqlSession, type, keyword);
		return listCount;
	}
	
	@Override
	public int getlistCount2(int i, int mid) {
		int listCount = ad.getListCount2(sqlSession, i, mid);
		return listCount;
	}
	
	@Override
	public List<Object> memberAllList(PageInfo pi) {
		return ad.memberAllList(sqlSession, pi);
	}
	
	@Override
	public List<Object> bandAllList(PageInfo pi) {
		return ad.bandAllList(sqlSession, pi);
	}

	@Override
	public List<Object> memberSearchList(PageInfo pi, String keyword) {
		return ad.memberSearchList(sqlSession, pi, keyword); 
	}

	@Override
	public List<Object> bandSearchList(PageInfo pi, String keyword, String keywordValue) { 
		return ad.bandSearchList(sqlSession, pi, keyword, keywordValue);
	} 

	@Override
	public List<Object> reportMemberList(PageInfo pi) {
		return ad.reportMemberList(sqlSession, pi);
	}

	@Override
	public List<Object> showReportMember(PageInfo pi, int mid) {
		return ad.showReportMember(sqlSession, pi, mid);
	}
	
	@Override
	public int insertBlackMember(int cid, String banReason) {
		int result = -99;
		result = ad.insertBlackMember(sqlSession, cid, banReason);
		ad.updateMember(sqlSession, cid);
		ad.updateMemberBand(sqlSession, cid);
		
		return result;
	}
	
	@Override
	public List<Object> reportBandList(PageInfo pi) {
		return ad.reportBandList(sqlSession, pi);
	}

	@Override
	public List<Object> showReportBand(PageInfo pi, int bid) {
		return ad.showReportBand(sqlSession, pi, bid);
	}
	
	@Override
	public int insertBlackBand(int bid, String banReason) {
		int result = -99;
		result = ad.insertBlackBand(sqlSession, bid, banReason);
		ad.updateBand(sqlSession, bid);
		
		return result;
	}
	
	@Override
	public List<Object> banMemberList(PageInfo pi) {
		return ad.banMemberList(sqlSession, pi);
	}

	@Override
	public List<Object> banBandList(PageInfo pi) {
		return ad.banBandList(sqlSession, pi);
	}

	

	

	

	
}
