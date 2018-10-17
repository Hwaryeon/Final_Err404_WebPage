package com.kh.efp.band.model.service;


import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.dao.BoardDao;
import com.kh.efp.band.model.vo.Board;
 
@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDao boardDao;
	
	//게시글 쓰기
	@Override
	public void create(Board vo) throws Exception {
		// TODO Auto-generated method stub

		int bId = vo.getbId();
		int mId = vo.getmId();
		String bContent = vo.getbContent();
		
		//줄바꿈 문자처리
		bContent = bContent.replace("\n","<br>");
		
		vo.setbId(bId);
		vo.setmId(mId);
		vo.setbContent(bContent);
		boardDao.create(vo);
	}

	//02. 게시글 상세보기
	@Override
	public Board read(int bno) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.read(bno);
	}

/*	//03.게시글 수정
	@Override
	public void update(Board vo) throws Exception {
		// TODO Auto-generated method stub
		boardDao.update(vo);
	}

	
	//04.게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		// TODO Auto-generated method stub
		boardDao.delete(bno);
	}*/
	
	
	// 게시글 수정
	@Override
	public int updateBoard(Board board) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//게시글 삭제
	@Override
	public int deleteBoard(int bno) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	//05.게시글 전체 목록
	@Override
	public List<Board> listAll(int pbid) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.listAll(pbid);
	}
	
/*	//06.수정화면
	@Override
	public List<Board> updatePage() throws Exception{
		return boardDao.updatePage();
		
	}*/

	//06.게시글 조회수 증가
	@Override
	public void increaseViewcnt(int bno, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		long update_time=0;
		//세션에 저장된 조회시간 검색
		// 최초로 조회할 경우 세션에 저장된 값이 없기 때무우우웅ㅇ if문 실행안하하아아앙
		if(session.getAttribute("update_time_"+bno)!=null){
					//세션에서 읽어오기
		/*	update_time = (long)session.getAttribute("update_time_"+bno);*/
			
		}
		//현재시간 current_time에 저장
		long current_time=System.currentTimeMillis();
		if(current_time-update_time>5*1000){
			boardDao.increaseViewcnt(bno);
			//세션에 시간을 저장 :"update_time_"+bno는 다른 변수와 중복되지 않게 명명함
			session.setAttribute("update_time_"+bno, current_time);
		}
		
	}

	@Override
	public Board selectBoard(Board board) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.selectBoard(board);
	}

	@Override
	public int updatePage() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
 

}
