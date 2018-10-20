package com.kh.efp.admin.model.service;

import java.util.List;

import com.kh.efp.member_band.model.vo.PageInfo;

public interface adminService {
	List<Object> memberAllList(PageInfo pi); 
	
	List<Object> bandAllList(PageInfo pi);

	List<Object> memberSearchList(PageInfo pi, String keyword);

	List<Object> bandSearchList(PageInfo pi, String keyword, String keywordValue); 

	List<Object> reportMemberList(PageInfo pi);

	List<Object> reportBandList(PageInfo pi);

	List<Object> banMemberList(PageInfo pi);

	List<Object> banBandList(PageInfo pi);

	int getlistCount(int type);

	int getSearchlistCount(int i, String keyword);

	int getlistCount2(int i, int mid);

	List<Object> showReportMember(PageInfo pi, int mid);

	int insertBlackMember(int cid, String banReason);

	List<Object> showReportBand(PageInfo pi, int bid);

	int insertBlackBand(int bid, String banReason);
	
	
	
}
