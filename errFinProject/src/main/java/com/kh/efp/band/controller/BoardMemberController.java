package com.kh.efp.band.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
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

import com.kh.efp.band.model.service.BoardService;
import com.kh.efp.band.model.vo.BanMemberList;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.MemberBandProfile;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.service.BoardMemberService;

 
@Controller
public class BoardMemberController {
	
	@Autowired private BandService bs;
	@Autowired BoardAlbumController bac;
	@Autowired BandLeaderController blc;
 
	@Inject
	BoardMemberService boardMemberService;
    
	public void bandLeftSideBar(int bid, int mid, Model model){
		System.out.println(bid + " , " + mid);
		String bname = bs.selectBandName(bid);  
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		Profile pf = new Profile();
		
		pf = bs.selectProfile(bid);
		
		mb = new Member_Band();
		
		mb.setBid(bid);
		mb.setMid(mid);
		
		int mlevel = bs.selectMlevel(mb);
		
		model.addAttribute("bname", bname);
		model.addAttribute("memberCount", mbList.size());
		model.addAttribute("pf", pf);
		
		model.addAttribute("bid", bid);
		model.addAttribute("mlevel", mlevel);
		
	}
	
	// 01. 회원 목록
	@RequestMapping("boardMember.do")
	public String BoardMemberList(Model model, String bid, HttpServletRequest request){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		int pbid = Integer.parseInt(bid);
		
		blc.bandLeftSideBar(pbid, mid, model);
		bac.rightSidePhoto(bid, model);
		
		
		MemberBandProfile mbp = new MemberBandProfile();
		
		mbp.setBid(pbid);
		System.out.println(mbp.getBid());
		ArrayList<MemberBandProfile> mbList = bs.selectMemberBandProfileList(mbp);
		
		System.out.println("결과" + mbList);
		model.addAttribute("mbList", mbList);
		
		return "boardBand/boardMemberList";
	}
    
    
    
}