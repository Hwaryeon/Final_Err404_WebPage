package com.kh.efp.category.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.category.model.vo.CategoryBandList;

@Repository
public class CategoryDaoImpl implements CategoryDao{

	//카테고리 리스트가져오기
	@Override
	public ArrayList<CategoryBandList> selectList(String kind, SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("Cateogory.selectCateogoryList", kind);
	}

}
