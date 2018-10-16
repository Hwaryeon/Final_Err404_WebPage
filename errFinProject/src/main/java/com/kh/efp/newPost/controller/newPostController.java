package com.kh.efp.newPost.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.newPost.model.service.newPostService;
import com.kh.efp.newPost.model.vo.BandMemberCount;
import com.kh.efp.newPost.model.vo.BandProfile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.Category;
import com.kh.efp.newPost.model.vo.MemberProfile;
import com.kh.efp.newPost.model.vo.Report;


@Controller
public class newPostController {
	
	@Autowired private newPostService ns;
	@Autowired private BandService bs;
	
	@RequestMapping("newPost.np")
	public String showMemberInfoList(Model model){
		
		//회원 아이디 임시로
		String memail = "loulqi152@yahoo.co.kr";
		int mid = 1;
		
		ArrayList<Category> cList = ns.selectCategoryList();
		
		ArrayList<Band> bList = ns.selectBandList(memail);
		
		ArrayList<Profile> bpList = new ArrayList<Profile>(bList.size());
		
		for(int i = 0; i < bList.size(); i++){
			bpList.add(bs.selectProfile(bList.get(i).getBid()));
		}
		
		ArrayList<Band> allBandList = ns.selectAllBandList();
		
		int rnum1 = (int)(Math.random() * (allBandList.size() - 0 + 1)) + 0;
		
		
		int rnum2 = (int)(Math.random() * (allBandList.size() - 0 + 1)) + 0;
		
		while(true){
			if(rnum1 == rnum2){
				rnum2 = (int)(Math.random() * (allBandList.size() - 0 + 1)) + 0;
			}else{
				break;
			}
			
		}
		
		ArrayList<Band> ranList = new ArrayList<Band>(2);
		ArrayList<Profile> rpList = new ArrayList<Profile>(ranList.size());
		ArrayList<BandMemberCount> bmcList = new ArrayList<BandMemberCount>(ranList.size());
		
		
		for(int i=0; i< allBandList.size(); i++){
			if(rnum1 == i || rnum2 == i){
				ranList.add(allBandList.get(i));
				rpList.add(bs.selectProfile(allBandList.get(i).getBid()));
				
				bmcList.add(new BandMemberCount(allBandList.get(i).getBid(), 
						ns.selectBandMemberCount(allBandList.get(i).getBid())));
			}
		}
		
		//새글 피드 갯수 카운트
		int newPostCount = 0 ;
		//새글 피드 댓글 갯수 카운트
		int commentCount = 0;
		
		
		Boards bs = new Boards();
		
		for(int i=0; i < bList.size(); i++){
			
			bs.setBid(bList.get(i).getBid());
			bs.setMid(mid);
			
			//새글 피드 갯수 세기
			newPostCount += ns.selectBandNewPostCount(bs);
			//댓글 갯수 세기
			commentCount += ns.selectCommentCount(bs);
			
			
		}
		
		//새글 피드 리스트
		ArrayList<Boards> newPostList = new ArrayList<Boards>(newPostCount);
		
		//댓글 리스트
		ArrayList<Boards> commentList = new ArrayList<Boards>(commentCount);
			
			for(int i=0; i < bList.size(); i++){
				
				bs.setBid(bList.get(i).getBid());
				bs.setMid(mid);
				
				//새글 피드 리스트
				ArrayList<Boards> temp = ns.selectNewPostList2(bs);
				
				//댓글 리스트
				ArrayList<Boards> temp2 = ns.selectCommentList(bs);
				
					for(int j=0; j < temp.size(); j++){
						
						newPostList.add(temp.get(j)); 
					}
					
					for(int j=0; j < temp2.size(); j++){
						commentList.add(temp2.get(j));
					}
					
					
			}
			
		Boards[] test =  new Boards[newPostList.size()];

		Boards[] test2 = new Boards[commentList.size()];
		
		for(int i=0; i < test.length; i++){
			test[i] = newPostList.get(i);
		}
		
		for(int i=0; i < test2.length; i++){
			test2[i] = commentList.get(i);
		}
		
		Boards b = new Boards();
		
		
		for(int i=test.length; i >0; i--){
			
			for(int j=0; j<i-1; j++){
				
				if((test[j].getBdate()).compareTo(test[j+1].getBdate()) == -1){
					
					b = test[j];
					test[j] = test[j+1];
					test[j+1] = b;
				}
			}
		}
		
		for(int i=test2.length; i > 0; i--){
			
			for(int j=0; j<i-1; j++){
				
				if((test2[j].getBdate()).compareTo(test2[j+1].getBdate()) == -1){
					
					b = test2[j];
					test2[j] = test2[j+1];
					test2[j+1] = b;
				}
			}
		}
		
		// 새글피드 프로필 검색
		ArrayList<MemberProfile> mList = new ArrayList<MemberProfile>(test.length);
		
		for(int i=0; i < test.length; i++){
			mList.add(ns.selectMemberProfile(test[i].getMid()));
		}
		
		//댓글 프로필 검색
		ArrayList<MemberProfile> mList2 = new ArrayList<MemberProfile>(test2.length);
		
		for(int i=0; i<test2.length; i++){
			mList2.add(ns.selectMemberProfile(test2[i].getMid()));
		}
		
		
		model.addAttribute("newPostList", test);
		model.addAttribute("mList", mList);
		
		
		model.addAttribute("cList", cList);
		model.addAttribute("bList", bList);
		model.addAttribute("bpList", bpList);
		model.addAttribute("ranList", ranList);
		model.addAttribute("rpList", rpList);
		model.addAttribute("bmcList", bmcList);
		
		model.addAttribute("commentList", test2);
		model.addAttribute("mList2", mList2);
		
		
		return "newPost/newPost";
	}
	
	@RequestMapping("reportPost.np")
	public String insertReport(@RequestParam int boardid, int bid, int mid, String radioVal , Model model){
		
		Report re = new Report();
		
		//임시로 지정
		int id = 1;
		
		re.setRcontent(radioVal);
		re.setMid(id);
		re.setRlevel("C");
		re.setBoardid(boardid);
		re.setBid(bid);
		re.setCid(mid);
		
		ns.insertReport(re);
		
		
		return "redirect:/newPost.np";
	}
	
	@RequestMapping("insertNewPost.np")
	public String insertNewPost(@RequestParam int boardid, int bid, String comment , Model model){
		
		/*System.out.println("boardid :" +boardid);
		System.out.println("bid : " + bid);
		System.out.println("comment : " +comment);*/
		
		
		//임시로 설정
		int mid = 1;
		
		Boards b = new Boards();
		
		b.setMid(mid);
		b.setRef_bid(boardid);
		b.setBid(bid);
		b.setBcontent(comment);
		b.setBstatus("Y");
		b.setRef_status("COMMENT");
		
		ns.insertNewPost(b);
		
		return "redirect:/newPost.np";
	}
	
	@RequestMapping("deleteBoard.np")
	public String deleteBoard(@RequestParam int boardid, Model model){
		
		ns.deleteBoard(boardid);
		
		
		return "redirect:/newPost.np";
	}
	
	@RequestMapping("updateBoard.np")
	public String updateBoard(@RequestParam int boardid, String comment , Model model){
		
		
		
		//임시로 설정
		int mid = 1;
		
		Boards b = new Boards();

		b.setBoardid(boardid);
		b.setBcontent(comment);
		
		ns.updateBoard(b);
		
		return "redirect:/newPost.np";
	}
	
}
