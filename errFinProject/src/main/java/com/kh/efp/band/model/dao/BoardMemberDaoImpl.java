package com.kh.efp.band.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.Member_Band;


@Repository
public class BoardMemberDaoImpl implements BoardMemberDao {

	@Inject
	SqlSession SqlSession;

	@Override
	public List<Member_Band> boardMemberList() {
		// TODO Auto-generated method stub
		return SqlSession.selectList("board.boardMemberList");
	}
	
	
	
}
