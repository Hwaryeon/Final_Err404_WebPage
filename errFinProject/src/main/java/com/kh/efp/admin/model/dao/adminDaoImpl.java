package com.kh.efp.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class adminDaoImpl implements adminDao {

	@Override
	public List<Object> memberAllList(SqlSessionTemplate sqlSession) {
		List<Object> memberList = new ArrayList<Object>();
		memberList = sqlSession.selectList("Admin.selectAllMember");
		
		//System.out.println("memberList[3] : " + memberList.get(3).toString());
		return memberList;
	}

	@Override
	public List<Object> bandAllList(SqlSessionTemplate sqlSession) {
		List<Object> bandList = new ArrayList<Object>();
		bandList = sqlSession.selectList("Admin.selectAllBand");
		
		return bandList;
	}
}
