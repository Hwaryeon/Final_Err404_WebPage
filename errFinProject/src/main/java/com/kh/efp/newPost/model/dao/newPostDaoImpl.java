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
import com.kh.efp.newPost.model.vo.MemberProfile;
import com.kh.efp.newPost.model.vo.Report;

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
	public Member selectMember(SqlSessionTemplate sqlSession, int mid) {
		return sqlSession.selectOne("newPost.selectMember", mid);
	}

	@Override
	public int selectBandNewPostCount(SqlSessionTemplate sqlSession, Boards bs) {
		return sqlSession.selectOne("newPost.selectBandNewPostCount", bs);
	}

	@Override
	public ArrayList<Boards> selectNewPostList2(SqlSessionTemplate sqlSession, Boards bs) {
		ArrayList<Boards> list = null;
		
		list = (ArrayList)sqlSession.selectList("newPost.selectNewPostList2", bs);
		
		return list;
	}

	@Override
	public MemberProfile selectMemberProfile(SqlSessionTemplate sqlSession, int mid) {
		return sqlSession.selectOne("newPost.selectMemberProfile", mid);
	}

	@Override
	public void insertReport(SqlSessionTemplate sqlSession, Report re) {
		sqlSession.insert("newPost.insertReport", re);
	}

	@Override
	public int selectCommentCount(SqlSessionTemplate sqlSession, Boards bs) {
		return sqlSession.selectOne("newPost.selectCommentCount", bs);
	}

	@Override
	public ArrayList<Boards> selectCommentList(SqlSessionTemplate sqlSession, Boards bs) {
		ArrayList<Boards> list = null;
		
		list = (ArrayList)sqlSession.selectList("newPost.selectCommentList", bs);
		
		return list;
	}


}
