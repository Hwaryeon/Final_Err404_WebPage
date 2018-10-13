package com.kh.efp.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public interface adminDao {
	List<Object> memberAllList(SqlSessionTemplate sqlSession);

	List<Object> bandAllList(SqlSessionTemplate sqlSession);
}
