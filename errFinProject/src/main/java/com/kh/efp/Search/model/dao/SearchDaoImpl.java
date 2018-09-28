package com.kh.efp.Search.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.Search.model.vo.Ban;
import com.kh.efp.Search.model.vo.Search;

@Repository
public class SearchDaoImpl implements SearchDao {

	//모든 검색 게시물 리스트가져오기
	@Override
	public ArrayList<Search> selectSearchContents(SqlSessionTemplate sqlSession, ArrayList list) {
		ArrayList<Search> lists = (ArrayList)sqlSession.selectList("Search.selectSearchContents", list);
		return lists;
	}

	//모든 검색 밴드 리스트가져오기	
	@Override
	public ArrayList<Search> selectSearchBand(SqlSessionTemplate sqlSession, ArrayList<String> list) {
		ArrayList<Search> lists = (ArrayList)sqlSession.selectList("Search.selectSearchBand", list);
		return lists;
	}

	//모든 차단 리스트 가져오기
	@Override
	public ArrayList<Ban> selectSearchBand(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("Search.selectSearchBan");
	}

	//스크롤시 밴드리스트 5개 가져오기
	@Override
	public ArrayList<Search> selectFiveBand(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return (ArrayList)sqlSession.selectList("Search.selectFiveBand", map);
	}

	@Override
	public ArrayList<Search> selectFiveContents(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return (ArrayList)sqlSession.selectList("Search.selectFiveContents", map);
	}

}
