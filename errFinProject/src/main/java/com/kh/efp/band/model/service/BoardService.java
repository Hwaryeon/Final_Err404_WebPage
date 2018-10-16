package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.social.google.api.plus.Activity.Article;

import com.kh.efp.band.model.vo.Board;

public interface BoardService {

	//01.게시글 작성
	public void create(Board vo) throws Exception;
	//02.게시글 상세보기
	public Board read(int bno) throws Exception;
	//03.게시글 수정
	public void update(Board vo)throws Exception;
	//04.게시글 삭제
	public void delete(int bno) throws Exception;
	//05. 게시글 전체 목록
	public List<Board> listAll(int pbid) throws Exception;
	//06.게시글 조회
	public void increaseViewcnt(int bno, HttpSession session) throws Exception;
	//07.게시글 수정
	public List<Board> updatePage() throws Exception;
	
	public Board selectBoard(Board board) throws Exception;
}
