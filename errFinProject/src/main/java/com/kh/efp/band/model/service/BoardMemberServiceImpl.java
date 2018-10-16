package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.social.google.api.plus.Activity.Article;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.dao.BoardMemberDao;
import com.kh.efp.band.model.dao.BoardMemberDaoImpl;
import com.kh.efp.band.model.vo.Member_Band;

@Service
public  class BoardMemberServiceImpl  implements BoardMemberService{
	
	@Inject
	BoardMemberDaoImpl boardMemberDao;

	@Override
	public List<Member_Band> boardMemberList() {
		// TODO Auto-generated method stub
		return boardMemberDao.boardMemberList();
	}


}
