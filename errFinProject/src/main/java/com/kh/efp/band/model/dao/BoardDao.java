package com.kh.efp.band.model.dao;

import java.util.List;

import com.kh.efp.band.model.vo.Attfile;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.MemberProfile;
import com.kh.efp.newPost.model.vo.Report;

public interface BoardDao {
	//01.게시글 작성
	public void create(Board vo)throws Exception;
	//02.게시글 상세보기
	public Board read(int bno)throws Exception;
	//03.게시글 수정
	public void update(Board vo)throws Exception;
	//04.삭제
	public void delete(int bno) throws Exception;
	//05.게시글 전체 목록
	public List<Board> listAll(int pbid) throws Exception;
	//06.게시글 조회 증가
	public void increaseViewcnt(int bno)throws Exception;
	//07.수정화면
	public List<Board> updatePage() throws Exception;
	public Board selectBoard(Board board) throws Exception;
	public void updateBoard(Board board)throws Exception;
	public void updateHit(int bno)throws Exception;
	public void deleteBoard(int bno)throws Exception;
	public int selectBoardCount(int pbid)throws Exception;
	public int selectCommentCount(int pbid)throws Exception;
	public List<Board> commentList(int pbid)throws Exception;
	public void insertComment(Boards b);
	public int deleteComment(int boardid);
	public void updateComment(Boards b);
	public MemberProfile selectMemberProfile(int getmId);
	
	
	public int insertFileProfile(String bid, Profile pf);

	
	
	
	
	public int insertFile(String bid);
	public int create1(Board vo);
	public int selectMid(Board vo);
	public int insertBoardFile(Attfile pf);
	public int selectBoardId(Board vo);
	public int selectCurrval();
	public int deleteContent(int boardid);
	public int insertReportContent(Report rp);
	public int insertReportComment(Report rp);

}
