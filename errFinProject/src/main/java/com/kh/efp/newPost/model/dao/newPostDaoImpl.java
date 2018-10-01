package com.kh.efp.newPost.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.newPost.model.vo.BandProfile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.Category;

@Repository
public class newPostDaoImpl implements newPostDao{

	@Override
	public ArrayList<Category> selectCategoryList(SqlSessionTemplate sqlSession) {
	
		ArrayList<Category> list = null;
		
		list = (ArrayList)sqlSession.selectList("newPost.selectCategoryList");
		
		return list;
		
	}

	@Override
	public ArrayList<Band> selectBandList(SqlSessionTemplate sqlSession, String memail) {
		ArrayList<Band> list = null;
		
		list = (ArrayList)sqlSession.selectList("newPost.selectBandList", memail);
		
		return list;
	}

	@Override
	public ArrayList<Band> selectAllBandList(SqlSessionTemplate sqlSession) {
		ArrayList<Band> list = null;
		
		list = (ArrayList)sqlSession.selectList("newPost.selectAllBandList");
		
		return list;
	}

	@Override
	public int selectBandMemberCount(SqlSessionTemplate sqlSession, int bid) {
		return sqlSession.selectOne("newPost.selectBandMemberCount", bid);
	}

	@Override
	public ArrayList<Boards> selectNewPostList(SqlSessionTemplate sqlSession, int mid) {
		ArrayList<Boards> list = null;
		
		list = (ArrayList)sqlSession.selectList("newPost.selectNewPostList", mid);
		
		return list;
	}

	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, int mid) {
		return sqlSession.selectOne("newPost.selectMember", mid);
	}

	@Override
	public int selectBandNewPostCount(SqlSessionTemplate sqlSession, int bid) {
		/*return sqlSession.selectOne("newPost.selectBandNewPostCount", bid);*/
		return 0;
	}


}
