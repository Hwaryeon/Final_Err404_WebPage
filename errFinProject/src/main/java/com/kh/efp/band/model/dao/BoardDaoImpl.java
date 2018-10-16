package com.kh.efp.band.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.efp.band.model.vo.Board;


@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	SqlSession SqlSession;
	
	//01.게시글 작성
	@Override
	public void create(Board vo) throws Exception {
		// TODO Auto-generated method stub
		
		SqlSession.insert("board.insert",vo);
	}

	@Override
	public Board read(int bno) throws Exception {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("board.view",bno);
	}

	@Override
	public void update(Board vo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession.update("board.updateArticle",vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		// TODO Auto-generated method stub
		SqlSession.delete("board.deleteArticle",bno);
	}

	@Override
	public List<Board> listAll(int pbid) throws Exception {
		// TODO Auto-generated method stub
		return SqlSession.selectList("board.listAll", pbid);
	}
	@Override
	public List<Board> updatePage() throws Exception{
		return SqlSession.selectList("board.listAll");
	}

	@Override
	public void increaseViewcnt(int bno) throws Exception {
		// TODO Auto-generated method stub
		SqlSession.update("board.increseViewcnt",bno);
		
	}

	@Override
	public Board selectBoard(Board board)throws Exception {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("board.selectBoard", board);
	}
	
	
	
	
}
