package com.kh.efp.newPost.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.newPost.model.vo.BandProfile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.Category;

public interface newPostDao {

	ArrayList<Category> selectCategoryList(SqlSessionTemplate sqlSession);

	ArrayList<Band> selectBandList(SqlSessionTemplate sqlSession, String memail);

	ArrayList<Band> selectAllBandList(SqlSessionTemplate sqlSession);

	int selectBandMemberCount(SqlSessionTemplate sqlSession, int bid);

	ArrayList<Boards> selectNewPostList(SqlSessionTemplate sqlSession, int mid);

	Member selectMember(SqlSessionTemplate sqlSession, int mid);

	int selectBandNewPostCount(SqlSessionTemplate sqlSession, int bid);


}
