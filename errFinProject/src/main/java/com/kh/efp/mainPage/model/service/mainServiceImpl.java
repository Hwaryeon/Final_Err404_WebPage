package com.kh.efp.mainPage.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.mainPage.model.dao.mainDao;

@Service
public class mainServiceImpl implements mainService {
	
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private mainDao md;
	
	@Override
	public List<Object> bandList(int mid) {
		
		return md.bandList(sqlSession, mid);
	}

	@Override
	public List<Object> popContent() {
		return md.popContent(sqlSession);
	}
}
