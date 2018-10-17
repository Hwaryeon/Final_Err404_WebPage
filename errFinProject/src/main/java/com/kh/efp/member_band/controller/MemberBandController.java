package com.kh.efp.member_band.controller;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.commons.Pagination;
import com.kh.efp.member_band.model.service.MemberBandService;
import com.kh.efp.member_band.model.vo.BandList;
import com.kh.efp.member_band.model.vo.BoardList;
import com.kh.efp.member_band.model.vo.PageInfo;

@Controller
public class MemberBandController {
	@Autowired MemberBandService mbs;
	
	@RequestMapping("showMemberInfo_write.mb")
	public String showMemberInfoWrite(String requestCurrentPage, String mid, Model model){
		System.out.println("write mb : " + mid);
		
		int currentPage = Integer.parseInt(requestCurrentPage);
		
		int imid = Integer.parseInt(mid);
		
		int listCount = mbs.selectListCount(imid);
		
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<BoardList> list = mbs.selectBoardList(pi, imid);
		
		System.out.println(list);
		
		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
		
		return "member/memberInfo_write";
	}

	@RequestMapping("showMemberInfo_bandlist.mb")
	public String showMemberInfoList(String mid,  Model model){
		int imid = Integer.parseInt(mid);
		
		ArrayList<BandList> list = mbs.selectBandList(imid);
		
		System.out.println(list);
		
		model.addAttribute("list", list);
		
		return "member/memberInfo_bandlist";
	}
	
	@RequestMapping("updateiStatus.mb")
	public void updateiStatus(String mid, String bid,
								HttpServletResponse response){
		ObjectMapper mapper = new ObjectMapper();
		
		int imid = Integer.parseInt(mid);
		int ibid = Integer.parseInt(bid);
		
		BandList bl = new BandList();
		bl.setMid(imid);
		bl.setBid(ibid);
		
		int result = mbs.updateiStatus(bl);
		
		try {
			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("moveToInviteCode.mb")
	public String moveToInviteCode(String inviteCode){
		
		Band b = mbs.selectBandinviteCode(inviteCode);
		
		return "redirect:/list.do?bid=" + b.getBid();
	}
	
}
