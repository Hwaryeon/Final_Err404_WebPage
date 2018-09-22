package com.kh.efp.Search.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.Search.model.vo.Ban;
import com.kh.efp.Search.model.vo.Search;

public interface SearchDao {

	ArrayList<Search> selectSearchContents(SqlSessionTemplate sqlSession, ArrayList<String> lists);

	ArrayList<Search> selectSearchBand(SqlSessionTemplate sqlSession, ArrayList<String> lists);

	ArrayList<Ban> selectSearchBand(SqlSessionTemplate sqlSession);

}
