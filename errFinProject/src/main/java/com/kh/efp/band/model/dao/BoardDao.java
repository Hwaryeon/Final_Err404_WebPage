package com.kh.efp.band.model.dao;

import java.util.List;

import com.kh.efp.band.model.vo.Board;

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
	public List<Board> listAll() throws Exception;
	//06.게시글 조회 증가
	public void increaseViewcnt(int bno)throws Exception;
	//07.수정화면
	public List<Board> updatePage() throws Exception;
	public Board selectBoard(Board board) throws Exception;


}
