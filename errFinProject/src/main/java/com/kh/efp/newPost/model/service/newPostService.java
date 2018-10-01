package com.kh.efp.newPost.model.service;

import java.util.ArrayList;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.newPost.model.vo.BandProfile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.Category;

public interface newPostService {

	ArrayList<Category> selectCategoryList();

	ArrayList<Band> selectBandList(String memail);

	ArrayList<Band> selectAllBandList();

	int selectBandMemberCount(int bid);

	ArrayList<Boards> selectNewPostList(int mid);

	Member selectMember(int mid);

	int selectBandNewPostCount(int bid);


}
