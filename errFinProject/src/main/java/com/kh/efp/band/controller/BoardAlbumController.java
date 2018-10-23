package com.kh.efp.band.controller;

import java.util.ArrayList;
import java.util.HashMap;
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
import org.springframework.web.servlet.ModelAndView;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.service.BoardService;
import com.kh.efp.band.model.vo.AttBoard;
import com.kh.efp.band.model.vo.Attfile;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
 
@Controller
public class BoardAlbumController {
	@Autowired BoardService boards;
	@Autowired BandService bs;
	@Autowired BandLeaderController blc;
	
	public void rightSidePhoto(String bid, Model model){
		ArrayList<Attfile> list = boards.selectRightSidePhoto(bid);
		
		model.addAttribute("rightAlbum", list);
	}
	
	@RequestMapping("goboardAlbum.do")
	public String boardAlbum(Model model, String bid, HttpServletRequest request){
		
		int mId = ((Member)request.getSession().getAttribute("loginUser")).getMid();
    	
    	int pbid = Integer.parseInt(bid);
    	
    	blc.bandLeftSideBar(Integer.parseInt(bid), mId, model);


    	rightSidePhoto(bid, model);
    	
    	
    	
    	
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
		
		
		ArrayList<AttBoard> list = boards.selectAlbum(pbid);
		System.out.println("사진 : " + list);
		
		model.addAttribute("album", list);
		model.addAttribute("bname", bname);
		model.addAttribute("memberCount", mbList.size());
		model.addAttribute("pf", pf);
		
		model.addAttribute("bid", bid);
		model.addAttribute("mlevel", mlevel);
		
		return "boardBand/boardAlbum";
	}
}