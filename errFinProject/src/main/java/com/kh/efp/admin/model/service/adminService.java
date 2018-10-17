package com.kh.efp.admin.model.service;

import java.util.List;

import com.kh.efp.member_band.model.vo.PageInfo;

public interface adminService {
	List<Object> memberAllList(PageInfo pi, String alignment); 
	
	List<Object> bandAllList(PageInfo pi, String alignment);

	List<Object> memberSearchList(PageInfo pi, String keyword);

	List<Object> bandSearchList(PageInfo pi, String keyword, String keywordValue); 

	List<Object> reportMemberList(PageInfo pi);

	List<Object> reportBandList(PageInfo pi);

	List<Object> banMemberList(PageInfo pi, String alignment);

	List<Object> banBandList(PageInfo pi, String alignment);

	int getlistCount(int type);

	int getSearchlistCount(int i, String keyword);
	
}
