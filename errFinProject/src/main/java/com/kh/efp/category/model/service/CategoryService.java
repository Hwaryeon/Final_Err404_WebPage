package com.kh.efp.category.model.service;

import java.util.ArrayList;

import com.kh.efp.category.model.vo.CategoryBandList;

public interface CategoryService {

	ArrayList<CategoryBandList> selectList(String kind);

}
