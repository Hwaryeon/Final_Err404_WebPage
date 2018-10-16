package com.kh.efp.admin.model.service;

import java.util.List;

public interface adminService {
	List<Object> memberAllList(String alignment);
	
	List<Object> bandAllList(String alignment);

	List<Object> memberSearchList(String keyword);

	List<Object> bandSearchList(String keyword, String keywordValue);

	List<Object> reportMemberList();

	List<Object> reportBandList();

	List<Object> banMemberList(String alignment);

	List<Object> banBandList(String alignment);
	
}
