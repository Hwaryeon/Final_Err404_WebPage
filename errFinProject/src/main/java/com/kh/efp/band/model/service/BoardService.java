package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.social.google.api.plus.Activity.Article;

import com.kh.efp.band.model.vo.AttBoard;
import com.kh.efp.band.model.vo.Attfile;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.MemberProfile;
import com.kh.efp.newPost.model.vo.Report;

public interface BoardService {

	//01.게시글 작성
	public void create(Board vo) throws Exception;
	//02.게시글 상세보기
	public Board read(int bno) throws Exception;
	
	//03.게시글 수정
	/*public void update(Board vo)throws Exception;*/
	public void updateBoard(Board board)throws Exception;
	
	public void updateHit(int bno) throws Exception;
	
	//04.게시글 삭제
//	public void delete(int bno) throws Exception;
	public void deleteBoard(int bno) throws Exception;
	
/*	//05. 게시글 전체 목록
	public List<Board> listAll(int pbid) throws Exception;*/
	//06.게시글 조회
	public void increaseViewcnt(int bno, HttpSession session) throws Exception;
//07.게시글 수정
	public int updatePage() throws Exception;
	
	//댓글
	
	public Board selectBoard(Board board) throws Exception;
	
	
	
	public int selectBoardCount(int pbid) throws Exception;
	//05. 게시글 전체 목록
	public List<Board> listAll(int pbid) throws Exception;
	
	
	public int selectCommentCount(int pbid) throws Exception;
	public List<Board> commentList(int pbid) throws Exception;
	public void insertComment(Boards b);
	public int deleteComment(int boardid);
	public void updateComment(Boards b);
	public MemberProfile selectMemberProfile(int getmId);
	
	
	public int insertFile(Board vo, Attfile af);
	public int selectCurrval();
	public ArrayList<AttBoard> selectAlbum(int pbid);
	public int deleteContent(int boardid);
	public int insertReportContent(Report rp);
	public int insertReportComment(Report rp);


	


}
