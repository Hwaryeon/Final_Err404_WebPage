package com.kh.efp.band.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.efp.band.model.vo.Board;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.MemberProfile;


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

/*	@Override
	public void update(Board vo) throws Exception {
		// TODO Auto-generated method stub
		SqlSession.update("board.updateArticle",vo);
	}
*/
	@Override
	public void delete(int bno) throws Exception {
		
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

	@Override
	public void updateBoard(Board board) throws Exception {
		// TODO Auto-generated method stub
		SqlSession.update("board.updateArticle",board);
	}



	@Override
	public void deleteBoard(int bno) throws Exception {
		// TODO Auto-generated method stub
		SqlSession.delete("board.deleteArticle",bno);
		
	}

	@Override
	public void update(Board vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHit(int bno) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int selectBoardCount(int pbid) throws Exception {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("board.selectBoardCount",pbid);
	}

	@Override
	public int selectCommentCount(int pbid) throws Exception {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("board.selectCommentCount",pbid);
	}

	@Override
	public List<Board> commentList(int pbid) throws Exception {
		// TODO Auto-generated method stub
		return SqlSession.selectList("board.commentList",pbid);
	}

	@Override
	public void insertComment(Boards b) {
		// TODO Auto-generated method stub
		SqlSession.insert("board.insertComment", b);
		
	}

	@Override
	public void deleteComment(int boardid) {
		// TODO Auto-generated method stub
		SqlSession.delete("board.deleteBoard", boardid);
	}

	@Override
	public void updateComment(Boards b) {
		// TODO Auto-generated method stub
		SqlSession.update("board.updateBoard", b);
	}

	@Override
	public MemberProfile selectMemberProfile(int mId) {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("board.selectMemberProfile",mId);
	}
	
	
	
	
}
