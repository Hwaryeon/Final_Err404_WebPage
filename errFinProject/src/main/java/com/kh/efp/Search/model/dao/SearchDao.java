package com.kh.efp.Search.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.Search.model.vo.Ban;
import com.kh.efp.Search.model.vo.Search;

public interface SearchDao {

	ArrayList<Search> selectSearchContents(SqlSessionTemplate sqlSession, ArrayList<String> lists);

	ArrayList<Search> selectSearchBand(SqlSessionTemplate sqlSession, ArrayList<String> lists);

	ArrayList<Ban> selectSearchBand(SqlSessionTemplate sqlSession);

	ArrayList<Search> selectFiveBand(SqlSessionTemplate sqlSession, HashMap<String, Object> map);

	ArrayList<Search> selectFiveContents(SqlSessionTemplate sqlSession, HashMap<String, Object> map);

}
