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
		
		ArrayList<Search> contents = searchDao.selectSearchContents(sqlSession, lists);
		ArrayList<Search> band = searchDao.selectSearchBand(sqlSession, lists);
		ArrayList<Ban> banList = searchDao.selectSearchBand(sqlSession);

		ArrayList<Search> searchContentsResult = new ArrayList<Search>(); 
		ArrayList<Search> searchBandResult = new ArrayList<Search>();
		
		HashMap<String, ArrayList<Search>> resultList = new HashMap<String, ArrayList<Search>>();
		
		boolean banCheck = true;
		
		//차단 되어있는 밴드 검색출력리스트에서 제거
		for(int n=0; n<band.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getBid() == band.get(n).getBid()){
					banCheck = false;
					break;
				}
			}
			if(banCheck){
				searchBandResult.add(band.get(n));
			}
			banCheck=true;
		}
		
		//차단 되어있는 게시글 검색출력리스트에서 제거		
		for(int n=0; n<contents.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getMid() == contents.get(n).getMid()){
					banCheck = false;
					break;
				}
			}
			if(banCheck)
				searchContentsResult.add(contents.get(n));
			banCheck=true;
		}
		
		resultList.put("band", searchBandResult);
		resultList.put("contents", searchContentsResult);
		
		return resultList;
	}

	//스크롤시 밴드리스트 5개 조회
	@Override
	public ArrayList<Search> selectFiveBand(HashMap<String, Object> map) {
		ArrayList<Search> fiveBand = searchDao.selectFiveBand(sqlSession ,map); 
		ArrayList<Search> fiveBandResult = new ArrayList<Search>(); 
		
		ArrayList<Ban> banList = searchDao.selectSearchBand(sqlSession);
		
		boolean banCheck = true;
		
		//차단 되어있는 밴드 검색출력리스트에서 제거
		for(int n=0; n<fiveBand.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getBid() == fiveBand.get(n).getBid()){
					banCheck = false;
					break;
				}
			}
			if(banCheck)
				fiveBandResult.add(fiveBand.get(n));
			banCheck=true;
		}
		
		return fiveBandResult;
	}

	//더 많은 게시글 보기시
	@Override
	public ArrayList<Search> selectSearchMorePost(ArrayList<String> lists) {
		ArrayList<Ban> banList = searchDao.selectSearchBand(sqlSession);
		boolean banCheck = true;
		ArrayList<Search> searchContentsResult = new ArrayList<Search>(); 
		ArrayList<Search> contents = searchDao.selectSearchContents(sqlSession, lists);
		
		//차단 되어있는 게시글 검색출력리스트에서 제거		
		for(int n=0; n<contents.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getMid() == contents.get(n).getMid()){
					banCheck = false;
					break;
				}
			}
			if(banCheck)
				searchContentsResult.add(contents.get(n));
			banCheck=true;
		}
		
		return searchContentsResult;
	}

	@Override
	public ArrayList<Search> selectFiveContents(HashMap<String, Object> map) {
		ArrayList<Ban> banList = searchDao.selectSearchBand(sqlSession);
		ArrayList<Search> searchContentsResult = new ArrayList<Search>(); 
		ArrayList<Search> fiveContents = searchDao.selectFiveContents(sqlSession ,map); 
		
		boolean banCheck = true;
		//차단 되어있는 게시글 검색출력리스트에서 제거		
		for(int n=0; n<fiveContents.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getMid() == fiveContents.get(n).getMid()){
					banCheck = false;
					break;
				}
			}
			if(banCheck)
				searchContentsResult.add(fiveContents.get(n));
			banCheck=true;
		}
		fiveContents = new ArrayList<Search>();
		for(int i=(int)map.get("startPage"); i<(int)map.get("endPage");i++){
			if(searchContentsResult.size() > i){
				fiveContents.add(searchContentsResult.get(i));
			}else{
				break;
			}
		}
		
		return fiveContents;
	}

	//자동완성 리스트
	@Override
	public ArrayList<String> selectAutoList(ArrayList<String> list) {
		ArrayList<Ban> banList = searchDao.selectSearchBand(sqlSession);
		ArrayList<Search> band = searchDao.selectSearchBand(sqlSession, list);
		ArrayList<String> searchBandList = new ArrayList<String>();
		boolean banCheck = true;
		
		//차단 되어있는 밴드 검색출력리스트에서 제거
		for(int n=0; n<band.size();n++){
			for(int i=0; i<banList.size(); i++){
				if(banList.get(i).getBid() == band.get(n).getBid()){
					banCheck = false;
					break;
				}
			}
			if(banCheck){
				searchBandList.add(band.get(n).getbName());
			}
			banCheck=true;
		}
		
		
		return searchBandList;
	}

}
