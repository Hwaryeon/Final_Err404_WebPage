package com.kh.efp.Search.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.efp.Search.model.vo.Search;

public interface SearchService {

	HashMap<String, ArrayList<Search>> selectSearchAll(ArrayList<String> lists);

	ArrayList<Search> selectFiveBand(HashMap<String, Object> map);

}
