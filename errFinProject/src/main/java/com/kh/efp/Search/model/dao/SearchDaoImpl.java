package com.kh.efp.Search.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.Search.model.vo.Search;

@Repository
public class SearchDaoImpl implements SearchDao {

	@Override
	public ArrayList<Search> selectSearchAll(SqlSessionTemplate sqlSession, String value) {
		ArrayList<Search> list = (ArrayList)sqlSession.selectList("Search.selectSearchAll", value); 
		return list;
	}

}
