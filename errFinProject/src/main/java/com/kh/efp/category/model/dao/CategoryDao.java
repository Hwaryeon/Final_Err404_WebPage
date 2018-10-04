package com.kh.efp.category.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.category.model.vo.CategoryBandList;

public interface CategoryDao {

	ArrayList<CategoryBandList> selectList(String kind, SqlSessionTemplate sqlSession);

}
