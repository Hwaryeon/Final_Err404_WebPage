package com.kh.efp.Search.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.Search.model.dao.SearchDao;
import com.kh.efp.Search.model.vo.Ban;
import com.kh.efp.Search.model.vo.Search;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired SearchDao searchDao;
	@Autowired private SqlSessionTemplate sqlSession;
	
	//모든 검색결과
	@Override
	public HashMap<String, ArrayList<Search>> selectSearchAll(ArrayList<String> lists) {
		ArrayList<Search> searchContentsResult = searchDao.selectSearchContents(sqlSession, lists);
		ArrayList<Search> searchBandResult = searchDao.selectSearchBand(sqlSession, lists);
		ArrayList<Ban> banList = searchDao.selectSearchBand(sqlSession);
		
		HashMap<String, ArrayList<Search>> resultList = new HashMap<String, ArrayList<Search>>();
		
		//차단 되어있는 밴드 검색출력리스트에서 제거
		for(int n=0; n<searchBandResult.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getBid() == searchBandResult.get(n).getBid()){
					System.out.println("제거된 밴드 : " + searchBandResult.get(n));
					searchBandResult.remove(n);
					break;
				}
			}
		}
		
		//차단 되어있는 게시글 검색출력리스트에서 제거		
		for(int n=0; n<searchContentsResult.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getMid() == searchContentsResult.get(n).getMid()){
					System.out.println("제거된 게시글 : " + searchContentsResult.get(n));					
					searchContentsResult.remove(n);
					break;
				}
			}
		}
		
		resultList.put("band", searchBandResult);
		resultList.put("contents", searchContentsResult);
		
		return resultList;
	}

}
