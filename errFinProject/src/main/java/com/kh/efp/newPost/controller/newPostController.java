package com.kh.efp.newPost.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.newPost.model.service.newPostService;
import com.kh.efp.newPost.model.vo.BandMemberCount;
import com.kh.efp.newPost.model.vo.BandProfile;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.Category;


@Controller
public class newPostController {
	
	@Autowired private newPostService ns;
	@Autowired private BandService bs;
	
	@RequestMapping("newPost.np")
	public String showMemberInfoList(Model model){
		
		System.out.println("newPost.np 컨트롤러 호출");
		
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
		
		int newPostCount = 0 ;
		
		for(int i=0; i < bList.size(); i++){
			newPostCount += ns.selectBandNewPostCount(bList.get(i).getBid());
		}
		
		System.out.println("newPostCount : " + newPostCount);
		
		
		ArrayList<Boards> npList = ns.selectNewPostList(mid);
		
		
		
		
		
		/*ArrayList<Member> memberList = new ArrayList<Member>(npList.size());
		
		
		int check = 0;
		for(int i=0; i < npList.size(); i++){
			
			check = 0;
			
			for(int j=0; j < memberList.size(); j++){
				if(memberList.get(j).getMid() == npList.get(i).getMid()){
					check = 1;
				}
			}
			
			if(check != 1){
				memberList.add(ns.selectMember(npList.get(i).getMid()));
			}
			
		}*/
		
		
		model.addAttribute("cList", cList);
		model.addAttribute("bList", bList);
		model.addAttribute("bpList", bpList);
		model.addAttribute("ranList", ranList);
		model.addAttribute("rpList", rpList);
		model.addAttribute("bmcList", bmcList);
		model.addAttribute("npList", npList);
		
		return "newPost/newPost";
	}
}
