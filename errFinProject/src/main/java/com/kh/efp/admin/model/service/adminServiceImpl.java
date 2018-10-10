package com.kh.efp.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.admin.model.dao.adminDao;

@Service
public class adminServiceImpl implements adminService {
	
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private adminDao ad;

	@Override
	public List<Object> memberAllList() {
		return ad.memberAllList(sqlSession);
	}
	
	

}
