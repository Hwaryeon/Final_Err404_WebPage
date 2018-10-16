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
		String alignment="mid";
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberList", as.memberAllList(alignment));
		return "admin/memberSelect"; 
	}
	//회원조회 페이지 정렬
	@RequestMapping("MemberSelect.ad")
	public String MemberSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment=request.getParameter("alignment");
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberList", as.memberAllList(alignment));
		return "admin/memberSelect";
	}
	@RequestMapping("goBandSelect.ad")
	//밴드조회 페이지 진입
	public String goBandSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment="bid";
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("bandList", as.bandAllList(alignment));
		return "admin/BandSelect";
	}
	@RequestMapping("BandSelect.ad")
	//밴드조회 페이지 정렬
	public String BandSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment = request.getParameter("alignment");
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("bandList", as.bandAllList(alignment));
		return "admin/BandSelect";
	}
	@RequestMapping("goMemberSearch.ad")
	//회원검색 페이지 진입
	public String goMemberSearch(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		return "admin/MemberSearch";
	}
	@RequestMapping("goBandSearch.ad")
	//밴드검색 페이지 진입
	public String goBandSearch(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		return "admin/BandSearch";
	}
	@RequestMapping("MemberSearch.ad")
	//회원 검색해오기
	public String memberSearch(Model model, HttpServletRequest request) {
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String keyword = request.getParameter("searchNickName");
		System.out.println("keyword : " + keyword);
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberSearch", as.memberSearchList(keyword));
		
		return "admin/MemberSearch";
	}
	@RequestMapping("BandSearch.ad")
	//밴드 검색해오기
	public String bandSearch(Model model, HttpServletRequest request) {
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String keyword = request.getParameter("keyword");
		String keywordValue = request.getParameter("keywordValue");
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("bandSearch", as.bandSearchList(keyword, keywordValue));
		
		return "admin/BandSearch";
	}
	@RequestMapping("goBMSelect.ad")
	//신고받은 회원 조회
	public String goBMSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportMember", as.reportMemberList());
		return"admin/BlackMemberSelect";
	}
	@RequestMapping("goBBSelect.ad")
	//신고받은 밴드 조회
	public String goBBSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportBand", as.reportBandList());
		return "admin/BlackBandSelect";
	}

	//블랙리스트 회원 조회화면 이동
	@RequestMapping("goBlackMember.ad")
	public String goBlackMember(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment="mid";
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banMember", as.banMemberList(alignment));
		return "admin/BlackMember";
	}
	//블랙리스트 회원 조회 정렬화면
	@RequestMapping("BlackMember.ad")
	public String BlackMember(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment=request.getParameter("alignment");
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banMember", as.banMemberList(alignment));
		return "admin/BlackMember";
	}
	//블랙리스트 밴드 조회
	@RequestMapping("goBlackBand.ad")
	public String goBlackBand(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment="bid";
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banBand", as.banBandList(alignment));
		return "admin/BlackBand";
	}
	//블랙리스트 밴드 조회 정렬화면
	@RequestMapping("BlackBand.ad")
	public String BlackBand(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment=request.getParameter("alignment");
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banBand", as.banBandList(alignment));
		return "admin/BlackBand";
	}
	
	

}
