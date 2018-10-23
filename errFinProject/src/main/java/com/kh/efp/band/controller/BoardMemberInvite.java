package com.kh.efp.band.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.efp.band.model.service.BoardService;
import com.kh.efp.band.model.vo.BanMemberList;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.commons.DayWeek;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.service.BoardMemberService;

 
@Controller
public class BoardMemberInvite {
	
	@Autowired BandLeaderController blc;
	@Autowired private BandService bs;
	
	@Inject
	BoardMemberService boardMemberService;
	@Autowired BoardAlbumController bac;
    
	// 01. 회원 목록
	@RequestMapping("boardMemberInvite.do")
	public String BoardMemberList(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		blc.bandLeftSideBar(bid, mid, model);
		
		String bid2 = bid + "";
		
		bac.rightSidePhoto(bid2, model);
		
		//임시로 지정
		/*int bid = 1;*/
	
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
	
		String code = bs.selectBandCode(bid);
		
		
		System.out.println("code : " + code);
		
		model.addAttribute("code", code);
		
		return "boardBand/memberInvite";
	}
    
	@RequestMapping(value="updateInvite.do", method=RequestMethod.POST)
	@ResponseBody 
	public Object updateInvite(@RequestParam String code, int bid, Map<String, Object> map,
										HttpServletResponse response) throws Exception{

		System.out.println("updateInvite 컨트롤러 호출..");
		System.out.println("updateInvite 컨트롤러 code :" + code);
		System.out.println("updateInvite 컨트롤러 bid :" + bid);
		
		Band b = new Band();
		
		b.setBid(bid);
		b.setBinvite_code(code);
		
		int result = bs.checkInviteCode(code);
		
		
		if( result > 0){
			
			int[] code2 = new int[6];
			int count = 0;
			boolean mFlag = true;
			
			String str = "";
			
			while(count < 6)
			{
				int number;
				// 랜덤번호 추출
				number = (int) (Math.random()*45+1);
				for(int i=0; i<count; i++){
					
					
					if(code2[i] == number) mFlag = false;
				}
				if(mFlag)
				{
					code2[count] = number ;
					count++;
					
					if(count != 6){
						str += number + " ";
					}else{
						str += number;
					}
					
				}
				mFlag = true;
			} 
			
			System.out.println("코드 변경됨 : " + str);
			
			b.setBinvite_code(str);
			
			code = str;
		}
		
		bs.updateBandCode(b);

		Map<String, Object> ret = new HashMap<String, Object>();
		
		ret.put("code", code);
		return ret;	
		
	}
    
    
}