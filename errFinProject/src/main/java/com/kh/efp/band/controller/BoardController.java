
package com.kh.efp.band.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.kh.efp.band.model.vo.Attfile;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.commons.CommonUtils;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.newPost.model.service.newPostService;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.MemberProfile;
import com.kh.efp.newPost.model.vo.Report;
 
@Controller

public class BoardController {
 
	//의존관계 주입
	@Autowired private newPostService ns; 
    @Autowired BoardService boardService;
    @Autowired BandService bs;
    @Autowired BandLeaderController blc;
    @Autowired BoardAlbumController bac;
    
    // 01.게시글 목록
    @RequestMapping("list.do")
    public ModelAndView list(String bid, HttpServletRequest request, Model model) throws Exception{
    	
    	int mId = ((Member)request.getSession().getAttribute("loginUser")).getMid();
    	
    	blc.bandLeftSideBar(Integer.parseInt(bid), mId, model);
    	String bid2 = bid + "";
		
		bac.rightSidePhoto(bid2, model);
    	
    	String status = bs.checkBandOpenStatus(Integer.parseInt(bid));
    	
    	int result = 0;
    	
    	if(status.equals("PTD")){
    		
    		System.out.println("status : " + status);
    		
    		Member_Band check = new Member_Band();
    		
    		check.setBid(Integer.parseInt(bid));
    		check.setMid(mId);
    		
    		result = bs.checkBlock(check);
    		
    	}else{
    		result = 1;
    	}
    	
    	if(result == 1)
    	{
    	int pbid = Integer.parseInt(bid);
    	
    	Board board = new Board();
    	
    	String bname = bs.selectBandName(pbid);  
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(pbid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		Profile pf = new Profile();
		
		pf = bs.selectProfile(pbid);
		
		mb = new Member_Band();
		
		mb.setBid(pbid);
		mb.setMid(mId);
		
		int mlevel = bs.selectMlevel(mb);
		
    	List<Board> list = boardService.listAll(pbid);
    	
    	int boardCount =0;
    	int commentCount =0;
    	
    	boardCount = boardService.selectBoardCount(pbid);
	    commentCount = boardService.selectCommentCount(pbid);
   
    	
    	ArrayList<Board> boardList = new ArrayList<Board>(boardService.selectBoardCount(pbid));
    	ArrayList<Board> commentList = new ArrayList<Board>(boardService.selectCommentCount(pbid));

    	
    		for(int j=0; j<list.size(); j++){
    			if((list.get(j).getRefStatus()).equals("CONTENT")){
    				
    				boardList.add(list.get(j));
    			}
    			
    		}
    	
    		for(int j=0; j<list.size(); j++){
    			if((list.get(j).getRefStatus()).equals("COMMENT")){
    				commentList.add(list.get(j));
    			}
    			
    		}
    	
    	
    	Board[] test = new Board[boardList.size()];
    	Board[] test2 = new Board[commentList.size()];
    	
    	/*ArrayList<Attfile> aList = new ArrayList<Attfile>();
		
		for(int i=0; i<boardList.size(); i++){
			aList.add(ns.selectAttfile(boardList.get(i).getBoardId()));
		}*/
    	
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
    	
   	
		// 목록 프로필 검색
		List<MemberProfile> mList = new ArrayList<MemberProfile>(test.length);
		
    	for(int i=0; i<test.length; i++){
    		mList.add(ns.selectMemberProfile(test[i].getmId()));
    	}
    	
    	// 댓글 프로필 검색
    	List<MemberProfile> mList2 = new ArrayList<MemberProfile>(test2.length);
    	
    	for(int i=0; i<test2.length; i++){
			mList2.add(ns.selectMemberProfile(test2[i].getmId()));
		}
		
    	
    	bac.rightSidePhoto(bid, model);
    	
    	
    	ArrayList<Attfile> aList = bs.selectAttList(Integer.parseInt(bid));
    	
    	for(int i=0; i<aList.size(); i++){
    		System.out.println(i + " : " + aList.get(i).toString());
    	}
    	
    	
    	
    	Band bb = bs.selectBand(pbid);
    	//ModelAndView - 모델과 뷰
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("boardBand/boardMain"); //뷰를 boardMain.jsp로 설정
    	
    	/*mav.addObject("boardMain",list);//데이터를 저장
    	mav.addObject("Band", bb);
    	mav.addObject("commentList", test2);*/
    	mav.addObject("bname", bname);
    	mav.addObject("memberCount", mbList.size());
    	mav.addObject("pf", pf);
		
    	mav.addObject("bid", bid);
    	mav.addObject("mlevel", mlevel);
    	
    	mav.addObject("Band", bb);
    	mav.addObject("boardList",test);
    	mav.addObject("commentList",test2);
    	
    	//프로필 리스트
    	mav.addObject("mList",mList);
    	mav.addObject("mList2",mList2);
    	
    	mav.addObject("aList",aList);
    	
    	return mav;// boardMain.jsp로 List 전달
    	
    }else{
    	
    	System.out.println("result : " + result);
    	System.out.println("비공개 밴드 and 가입되지 않은 회원");
    	
    	/*blc.bandLeftSideBar(Integer.parseInt(bid), mId, model);*/
    	
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("band/bandBlock"); //뷰를 boardMain.jsp로 설정
    	
    	
    	return mav;// boardMain.jsp로 List 전달
    	
    }

    	
    	
    }
    // 사진 올리기
/*    
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
*/
    //02. 게시글 작성처리
   /* @RequestMapping(value="insert.do",method=RequestMethod.POST)
    public String insert(@ModelAttribute Board vo)throws Exception{
    	System.out.println("insert.do 호출");
    	System.out.println(vo);
    	boardService.create(vo);
    	return "redirect:list.do?bid=" + vo.getbId();
    }
    */
/*    @RequestMapping("insert.do")
	public String insertNewPost(@RequestParam int bId, String bContent,
			HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();		
		
		
		System.out.println("insert.do 호출");
		
		System.out.println("bid : " + bId);
		System.out.println("bContent : " + bContent);
		
		Boards b = new Boards();
		
		b.setMid(mid);
		b.setRef_bid(boardid);
		b.setBid(bid);
		b.setBcontent();
		b.setBstatus("Y");
		b.setRef_status("CONTENT");
		
		ns.insertNewPost(b);
		
		return "redirect:list.do?bid=" + bId;
	}
    */
    
    
    //02. 게시글 작성처리
    @RequestMapping(value="insert.do",method=RequestMethod.POST)
    public String insert(@ModelAttribute Board vo,  HttpServletRequest request, 
    		@RequestParam(name="uploadImage", required=false)MultipartFile photo)throws Exception{
    	System.out.println(vo);
    	
    	//여기서부터 파일 업로드
    	Profile pf = new Profile();
    	
    	Attfile af = new Attfile();
    	
    	String root = "";
		String filePath = "";
		String originFileName = "";
		String ext = "";
		String changeName = "";

		System.out.println("photo : " + photo);
    	
		if(!photo.isEmpty()){
			
		
		root = request.getSession().getServletContext().getRealPath("resources");

		filePath = root + "/upload_images/";

		originFileName = photo.getOriginalFilename();
		ext = originFileName.substring(originFileName.lastIndexOf("."));

		changeName = CommonUtils.getRandomString();
		
		pf.setFileSrc(filePath);
		pf.setOriginName(originFileName);
		pf.setEditName(changeName + ext);
		
		af.setFile_src(filePath);
		af.setForigin_name(originFileName);
		af.setEdit_name(changeName + ext); 
		
		System.out.println("controller bif : " + vo + " / pf : " + af);
		
		}
		try {
			
			//사진 유무 확인 후 파일 저장
			if(!photo.isEmpty()){
				
				photo.transferTo(new File(filePath + changeName + ext));
				int result = boardService.insertFile(vo, af); //프사와 멤버객체 저장
			}



			

		} catch (Exception e) {
			new File(filePath + changeName + ext).delete();

		}
    	
    	
    	if(photo.isEmpty()){    		
    	boardService.create(vo);
    	}
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
    public ModelAndView updatePage(int boardId, String bContent, int bId,
    		HttpServletRequest request, Model model ) throws Exception{
    	
    	int mId = ((Member)request.getSession().getAttribute("loginUser")).getMid();
  
    	blc.bandLeftSideBar(bId, mId, model);
    	String bid2 = bId + "";
		
		bac.rightSidePhoto(bid2, model);
    	
    	
    	Board board = new Board();
    	
    	 board.setBoardId(boardId);
    	board.setmId(mId);
    	board.setbContent(bContent);
    	board.setbId(bId);
    	
    	System.out.println("baord : " + board);
    	
    	Board selectBoard = boardService.selectBoard(board);
//    	ModelAndView mav = new ModelAndView();
//    	mav.setViewName("board/view");
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("boardBand/boardEdit"); //뷰를 boardMain.jsp로 설정
    	mav.addObject("board",selectBoard);//데이터를 저장
    	return mav;
  	
    	/*return "boardBand/boardEdit";*/
    }
    
    @RequestMapping(value="updateContent.do", method=RequestMethod.POST)
	public String updateContent(@RequestParam int boardId, String bContent, int bId, 
			@RequestParam(name="uploadImage", required=false)MultipartFile photo,
			HttpServletRequest request, Model model)throws Exception{
		
    	int mId = ((Member)request.getSession().getAttribute("loginUser")).getMid();
    	
    	Boards b = new Boards();
    	
    	
    	b.setBoardid(boardId);
    	b.setBcontent(bContent);
    	
    	System.out.println("updateContent.do");
    	System.out.println("b : " + b);
    	
    	ns.updateBoard(b);
    	
    	
    	Attfile af = new Attfile();
    	
    	String root = "";
		String filePath = "";
		String originFileName = "";
		String ext = "";
		String changeName = "";

		System.out.println("photo : " + photo);
    	
		if(!photo.isEmpty()){
			
		
		root = request.getSession().getServletContext().getRealPath("resources");

		filePath = root + "/upload_images/";

		originFileName = photo.getOriginalFilename();
		ext = originFileName.substring(originFileName.lastIndexOf("."));

		changeName = CommonUtils.getRandomString();
		
		af.setFile_src(filePath);
		af.setForigin_name(originFileName);
		af.setEdit_name(changeName + ext); 
		af.setBoardId(boardId);
		
		System.out.println("af : " + af);
		
		}
		try {
			
			//사진 유무 확인 후 파일 저장
			if(!photo.isEmpty()){
				
				System.out.println("사진 파일 있음");
				
				photo.transferTo(new File(filePath + changeName + ext));
				
				System.out.println("attfile : " + af);
				
				bs.updateAttFile(af);
				//프사와 멤버객체 저장
			}else{
				System.out.println("사진 파일 없음");
			}

		} catch (Exception e) {
			new File(filePath + changeName + ext).delete();

		}
    	
    	
    	/*if(photo.isEmpty()){    		
    		boardService.create(vo);
    	}*/
    	
    	
    	
    	
    	String bid2 = bId + "";
		
		return "redirect:/list.do?bid=" + bid2;
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
    
	@RequestMapping("deleteContent.do")
	public void deleteContent(@RequestParam int boardid , HttpServletRequest req, HttpServletResponse res, Model model){
		
		int result = boardService.deleteContent(boardid);
		
		try {
			res.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    
	@RequestMapping("reportContent.do")
	public void reportContent(@RequestParam int boardid, String reason, int bid, int mid , HttpServletRequest req, HttpServletResponse res, Model model){
		Member m = (Member) req.getSession().getAttribute("loginUser");
		Report rp = new Report();
		rp.setBid(bid);
		rp.setBoardid(boardid);
		rp.setRcontent(reason);
		rp.setCid(mid);
		rp.setRlevel("C");
		rp.setMid(m.getMid());
		
		int result = boardService.insertReportContent(rp);
		System.out.println(result);
		try {
			res.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("deleteComment2.do")
	public void deleteComment2(@RequestParam int boardid , HttpServletRequest req, HttpServletResponse res, Model model){
		
		int result = boardService.deleteComment(boardid);
		
		try {
			res.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("reportComment.do")
	public void reportComment(@RequestParam int boardid, String reason, int bid, int mid , HttpServletRequest req, HttpServletResponse res, Model model){
		Member m = (Member) req.getSession().getAttribute("loginUser");
		Report rp = new Report();
		rp.setBid(bid);
		rp.setBoardid(boardid);
		rp.setRcontent(reason);
		rp.setCid(mid);
		rp.setRlevel("M");
		rp.setMid(m.getMid());
		
		int result = boardService.insertReportComment(rp);
		System.out.println(result);
		try {
			res.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    

}