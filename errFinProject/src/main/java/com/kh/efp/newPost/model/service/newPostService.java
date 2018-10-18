package com.kh.efp.newPost.model.service;

import java.util.ArrayList;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.newPost.model.vo.BandProfile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.Category;
import com.kh.efp.newPost.model.vo.MemberProfile;
import com.kh.efp.newPost.model.vo.Report;

public interface newPostService {

	ArrayList<Category> selectCategoryList();

	ArrayList<Band> selectBandList(String memail); 

	ArrayList<Band> selectAllBandList();

	int selectBandMemberCount(int bid);

	Member selectMember(int mid);

	int selectBandNewPostCount(Boards bs);

	ArrayList<Boards> selectNewPostList2(Boards bs);

	MemberProfile selectMemberProfile(int mid);

	void insertReport(Report re);

	int selectCommentCount(Boards bs);

	ArrayList<Boards> selectCommentList(Boards bs);

	void insertNewPost(Boards b);

	void deleteBoard(int boardid);

	void updateBoard(Boards b);


}
