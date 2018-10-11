package com.kh.efp.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.efp.admin.model.service.adminService;
import com.kh.efp.member.model.vo.loginUser;

@Controller
@SessionAttributes("loginUser")
public class AdminController {
	@Autowired private adminService as;
	
	//회원조회 페이지 진입
	@RequestMapping("goMemberSelect.ad")
	public String goMemberSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberList", as.memberAllList());
		
		return "administer/memberSelect";
	}
	@RequestMapping("goBandSelect.ad")
	//밴드조회 페이지 진입
	public String goBandSelect(){
		return "admin/BandSelect";
	}
	@RequestMapping("goMemberSearch.ad")
	//회원검색 페이지 진입
	public String goMemberSearch(){
		return "admin/MemberSearch";
	}
	@RequestMapping("goBandSearch.ad")
	//밴드검색 페이지 진입
	public String goBandSearch(){
		return "admin/BandSearch";
	}
	@RequestMapping("goBMSelect.ad")
	//신고받은 회원 조회
	public String goBMSelect(){
		return"admin/BlackMemberSelect";
	}
	@RequestMapping("goBBSelect.ad")
	//신고받은 밴드 조회
	public String goBBSelect(){
		return "admin/BlackBandSelect";
	}
	@RequestMapping("goBlackMember.ad")
	//블랙리스트 회원 조회
	public String goBlackMember(){
		return "admin/BlackMember";
	}
	@RequestMapping("goBlackBand.ad")
	//블랙리스트 밴드 조회
	public String goBlackBand(){
		return "admin/BlackBand";
	}
	
	

}
