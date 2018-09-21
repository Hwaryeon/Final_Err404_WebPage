package com.kh.efp.Search.model.service;

import java.util.ArrayList;

import com.kh.efp.Search.model.vo.Search;

public interface SearchService {

	ArrayList<Search> selectSearchAll(String value);

}
