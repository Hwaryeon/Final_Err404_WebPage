package com.kh.efp.band.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.api.plus.Activity.Article;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.service.BoardService;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.MemberProfile;
 
@Controller

public class BoardController {
 
	//의존관계 주입
    @Autowired
    BoardService boardService;
    @Autowired BandService bs;
    
    // 01.게시글 목록
    @RequestMapping("list.do")
    public ModelAndView list(String bid, HttpServletRequest request) throws Exception{
    	
    	int mId = ((Member)request.getSession().getAttribute("loginUser")).getMid();
    	
    	int pbid = Integer.parseInt(bid);
    	
    	Board board = new Board();

    	
    	List<Board> list = boardService.listAll(pbid);
    	
    	int boardCount =0;
    	int commentCount =0;
    	
    	
    	for(int i=0; i<list.size();i++){
    		
    	board.setbId(list.get(i).getbId());
    	board.setmId(mId);
    	
    	boardCount += boardService.selectBoardCount(pbid);
    	commentCount += boardService.selectCommentCount(pbid);
    		
    		
    		
    	}
    	
    	List<Board> boardList = new ArrayList<Board>(boardCount);
    	List<Board> commentList = new ArrayList<Board>(commentCount);
    	
    	
    	for(int i=0; i< list.size(); i++){
    		board.setbId(list.get(i).getbId());
    		board.setmId(mId);
    		
    		
    		
    	}
    	/*
    	// ********
    	List<Board> list = boardService.listAll(pbid);
    	// ******
*/    	
    	
    	List<Board> cList= boardService.commentList(pbid);
    	
    	
    	for(int i=0;i<list.size();i++){
    		for(int j=0; j< list.size(); j++){
    			
    			boardList.add(list.get(j));
    		}
    		
    		for(int j=0; j<cList.size(); j++){
    			commentList.add(cList.get(j));
    		}
    		
    	}
    	
    	
    	Board[] test = new Board[boardList.size()];
    	Board[] test2 = new Board[commentList.size()];
    	
    	
    	for(int i=0; i<test.length; i++){
    		test[i] = boardList.get(i);
    	}
    	
    	for(int i=0; i<test2.length; i++){
    		test2[i] = commentList.get(i);
    	}
    	
    	
    	
    	Board b = new Board();
    	
    	for(int i=test.length; i >0; i--){
			
			for(int j=0; j<i-1; j++){
				
				if((test[j].getbDate()).compareTo(test[j+1].getbDate()) == -1){
					
					b = test[j];
					test[j] = test[j+1];
					test[j+1] = b;
				}
			}
		}
		
		for(int i=test2.length; i > 0; i--){
			
			for(int j=0; j<i-1; j++){
				
				if((test2[j].getbDate()).compareTo(test2[j+1].getbDate()) == -1){
					
					b = test2[j];
					test2[j] = test2[j+1];
					test2[j+1] = b;
				}
			}
		}
    	
/*    	
	// 목록 프로필 검색
		ArrayList<MemberProfile> mList = new ArrayList<MemberProfile>(test.length);
		
    	for(int i=0; i<test.length; i++){
    		mList.add(boardService.selectMemberProfile(test[i].getmId()));
    	}
    	
    	// 댓글 프로필 검색
    	ArrayList<MemberProfile> mList2 = new ArrayList<MemberProfile>(test2.length);
    	
    	for(int i=0; i<test2.length; i++){
			mList2.add(boardService.selectMemberProfile(test2[i].getmId()));
		}
		
   */
    	
    	

    	Band bb = bs.selectBand(pbid);
    	//ModelAndView - 모델과 뷰
    	
    	

    	
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("boardBand/boardMain"); //뷰를 boardMain.jsp로 설정
    	
 /*	mav.addObject("mList",mList);*/
    	mav.addObject("boardMain",list);//데이터를 저장
    	mav.addObject("Band", bb);
    	mav.addObject("commentList", test2);
/*  	mav.addObject("mList2",mList2);*/
    	
    	return mav;// boardMain.jsp로 List 전달
    	


    	
    	
    }
    // 사진 올리기
    
    @RequestMapping(value = "requestupload1")
    public String requestupload1(MultipartHttpServletRequest mtfRequest) {
        String src = mtfRequest.getParameter("src");
        System.out.println("src value : " + src);
        MultipartFile mf = mtfRequest.getFile("file");

        String path = "C:\\image\\";

        String originFileName = mf.getOriginalFilename(); // 원본 파일 명
        long fileSize = mf.getSize(); // 파일 사이즈

        System.out.println("originFileName : " + originFileName);
        System.out.println("fileSize : " + fileSize);

        String safeFile = path + System.currentTimeMillis() + originFileName;

        try {
            mf.transferTo(new File(safeFile));
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return "redirect:/";
    }


    
    //02. 게시글 작성처리
    @RequestMapping(value="insert.do",method=RequestMethod.POST)
    public String insert(@ModelAttribute Board vo)throws Exception{
    	System.out.println(vo);
    	boardService.create(vo);
    	return "redirect:list.do?bid=" + vo.getbId();
    }
    
/*    //03. 게시글 상세내용 조회, 게시글 조회수 증가 처리
    // @RequestParam : get/post방식으로 전달된 변수 1개
    //HttpSession 세션객체
    @RequestMapping(value="view.do",method=RequestMethod.GET)
    public ModelAndView view(@RequestParam int bno, HttpSession session) throws Exception{
    	//조회수 증가 처리
    	boardService.increaseViewcnt(bno,session);
    	//모델 (데이터)+뷰(화면) 함께 전달하는 객체
    	ModelAndView mav = new ModelAndView();
    	//뷰의 이름
    	mav.setViewName("board/view");
    	//뷰에 전달할 데이터
    	mav.addObject("dto",boardService.read(bno));
    	return mav;
    }
    */
    //04. 게시글 수정
    //폼에서 입력한 내용들은 @ModelAttribute Board vo로 전달
    @RequestMapping(value="updateBoard.do",method=RequestMethod.POST)
    public String updateBoard(int bId, @ModelAttribute Board board)throws Exception{
    	board.setbId(bId);
    	
    	System.out.println("bid"+bId);
    	boardService.updateBoard(board);
    	/*boardService.update(vo);*/
    	return "redirect:list.do?bid=" + board.getbId();
    }
    
    //05. 게시글 수정 처리 화면
    @RequestMapping(value="updatePage.do",method=RequestMethod.GET)
    public ModelAndView updatePage(int boardId, int mId, String bContent, int bId) throws Exception{
  
    	Board board = new Board();
    	
    	 board.setBoardId(boardId);
    	board.setmId(mId);
    	board.setbContent(bContent);
    	board.setbId(bId);
    	
    	System.out.println("ㅔㅔ" + board);	
    	Board selectBoard = boardService.selectBoard(board);
//    	ModelAndView mav = new ModelAndView();
//    	mav.setViewName("board/view");
    	System.out.println("ll" + selectBoard);
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("boardBand/boardEdit"); //뷰를 boardMain.jsp로 설정
    	mav.addObject("board",selectBoard);//데이터를 저장
    	return mav;
  	
    	/*return "boardBand/boardEdit";*/
    }
    
    
    //05. 게시글 삭제
    @RequestMapping(value = "delete.do", method=RequestMethod.GET)
    public String deleteBoard(@RequestParam int bno)throws Exception{
    	boardService.deleteBoard(bno);
    	return "redirect:list.do";
    }
   
    
    
    // 댓글 
	@RequestMapping("insertComment.do")
	public String insertComment(@RequestParam int boardid, int bid, String comment , HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();		
		
		Boards b = new Boards();
		
		b.setMid(mid);
		b.setRef_bid(boardid);
		b.setBid(bid);
		b.setBcontent(comment);
		b.setBstatus("Y");
		b.setRef_status("COMMENT");
		
		System.out.println("Boards : " + b.toString());
		
		
		try {
			boardService.insertComment(b);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String bid2 = bid + "";
		
		return "redirect:list.do?bid=" + bid2;
	}
	
	@RequestMapping("deleteComment.do")
	public String deleteBoard(@RequestParam int boardid, Model model){
		
		try {
			boardService.deleteComment(boardid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "redirect:/list.do";
	}
	
	@RequestMapping("updateComment.do")
	public String updateBoard(@RequestParam int boardid, String comment , HttpServletRequest request, Model model){
		
		
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		Boards b = new Boards();

		b.setBoardid(boardid);
		b.setBcontent(comment);
		
		try {
			boardService.updateComment(b);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/newPost.np";
	}
    
    
    
    
}