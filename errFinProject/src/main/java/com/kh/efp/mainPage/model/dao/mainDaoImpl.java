package com.kh.efp.mainPage.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class mainDaoImpl implements mainDao {
	
	@Override
	public List<Object> bandList(SqlSessionTemplate sqlSession, int mid) {
		List<Object> bandList = new ArrayList<Object>();
		//System.out.println("Dao mid : " + mid);
		bandList = sqlSession.selectList("Main.selectMyBand", mid);
		System.out.println("밴드리스트 : " + bandList);
		
		return bandList;
	}

	@Override
	public List<Object> popContent(SqlSessionTemplate sqlSession) {
		List<Object> popContent = new ArrayList<Object>();
		popContent = sqlSession.selectList("Main.selectPopContent");
		//System.out.println("popContent (first) : " + popContent);
		
		int first = (int)(Math.random() * 5);
		int second = (int)(Math.random() * 5);
		
		while(first == second) {
			second = (int)(Math.random() * 5);
		}
		
		List<Object> finalContent = new ArrayList<Object>();
		
		for(int i=0;i<5;i++) {
			if(i == first || i == second) {
				finalContent.add(popContent.get(i));
			}
		}
		
		System.out.println("finalContent : " + finalContent);
		
		return finalContent;
	}

}
