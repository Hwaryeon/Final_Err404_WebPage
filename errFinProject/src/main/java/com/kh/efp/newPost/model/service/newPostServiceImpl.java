package com.kh.efp.newPost.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.newPost.model.dao.newPostDao;
import com.kh.efp.newPost.model.vo.BandProfile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.Category;
import com.kh.efp.newPost.model.vo.MemberProfile;
import com.kh.efp.newPost.model.vo.Report;

@Service
public class newPostServiceImpl implements newPostService{

	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private newPostDao nd;
	
	@Override
	public ArrayList<Category> selectCategoryList() {
		return nd.selectCategoryList(sqlSession);
	}

	@Override
	public ArrayList<Band> selectBandList(String memail) {
		return nd.selectBandList(sqlSession, memail);
	}

	@Override
	public ArrayList<Band> selectAllBandList() {
		return nd.selectAllBandList(sqlSession);
	}

	@Override
	public int selectBandMemberCount(int bid) {
		return nd.selectBandMemberCount(sqlSession, bid);
	}

	@Override
	public Member selectMember(int mid) {
		return nd.selectMember(sqlSession, mid);
	}

	@Override
	public int selectBandNewPostCount(Boards bs) {
		return nd.selectBandNewPostCount(sqlSession, bs);
	}

	@Override
	public ArrayList<Boards> selectNewPostList2(Boards bs) {
		return nd.selectNewPostList2(sqlSession, bs);
	}

	@Override
	public MemberProfile selectMemberProfile(int mid) {
		return nd.selectMemberProfile(sqlSession, mid);
	}

	@Override
	public void insertReport(Report re) {
		nd.insertReport(sqlSession, re);
	}

	@Override
	public int selectCommentCount(Boards bs) {
		return nd.selectCommentCount(sqlSession, bs);
	}

	@Override
	public ArrayList<Boards> selectCommentList(Boards bs) {
		return nd.selectCommentList(sqlSession, bs);
	}

}
