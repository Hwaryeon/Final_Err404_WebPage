package com.kh.efp.Search.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.Search.model.dao.SearchDao;
import com.kh.efp.Search.model.vo.Search;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired SearchDao searchDao;
	@Autowired private SqlSessionTemplate sqlSession;
	
	//모든 검색결과
	@Override
	public ArrayList<Search> selectSearchAll(String value) {
		ArrayList<Search> searchResult = searchDao.selectSearchAll(sqlSession, value);
		return searchResult;
	}

}
