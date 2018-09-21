package com.kh.efp.Search.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.Search.model.vo.Search;

public interface SearchDao {

	ArrayList<Search> selectSearchAll(SqlSessionTemplate sqlSession, String value);

}
