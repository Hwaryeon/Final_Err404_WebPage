package com.kh.efp.category.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.Search.model.dao.SearchDaoImpl;
import com.kh.efp.Search.model.vo.Ban;
import com.kh.efp.category.model.dao.CategoryDao;
import com.kh.efp.category.model.vo.CategoryBandList;

@Service
public class CategoryImpl implements CategoryService{

	@Autowired CategoryDao categoryDao;
	@Autowired private SqlSessionTemplate sqlSession;
	
	//카테고리 리스트 가져오기
	@Override
	public ArrayList<CategoryBandList> selectList(String kind) {
		ArrayList<CategoryBandList> band = categoryDao.selectList(kind, sqlSession);
		ArrayList<Ban> banList = new SearchDaoImpl().selectSearchBand(sqlSession);
		ArrayList<CategoryBandList> searchBandList = new ArrayList<CategoryBandList>();
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
				searchBandList.add(band.get(n));
			}
			banCheck=true;
		}
		
		return searchBandList;
	}

}
