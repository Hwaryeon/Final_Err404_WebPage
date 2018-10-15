package com.kh.efp.admin.model.service;

import java.util.List;

public interface adminService {
	List<Object> memberAllList(String alignment);
	
	List<Object> bandAllList();

	List<Object> memberSearchList(String keyword);

	List<Object> bandSearchList(String keyword, String keywordValue);
	
}
