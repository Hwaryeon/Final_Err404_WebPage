package com.kh.efp.mainPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public interface mainDao {

	List<Object> bandList(SqlSessionTemplate sqlSession, int mid);

	List<Object> popContent(SqlSessionTemplate sqlSession);

}
