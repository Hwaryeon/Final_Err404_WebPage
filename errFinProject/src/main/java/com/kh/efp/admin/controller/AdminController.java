package com.kh.efp.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.efp.admin.model.service.adminService;
import com.kh.efp.commons.Pagination;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.loginUser;
import com.kh.efp.member_band.model.vo.PageInfo;

@Controller
@SessionAttributes("loginUser")
public class AdminController {
	@Autowired private adminService as;
	
	//회원조회 페이지 진입
	@RequestMapping("goMemberSelect.ad")
	public String goMemberSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment="mid";
		
		//페이징처리
		int currentPage = 1;
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = as.getlistCount(1);
		System.out.println("memberSelect listCount : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		System.out.println("pageInfo : " + pi);
		List<Object> list = as.memberAllList(pi, alignment);
		
		System.out.println("memberSelect list : " + list);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberList", list);
		model.addAttribute("pi", pi);
		
		return "admin/memberSelect"; 
	}
	//회원조회 페이지 정렬
	@RequestMapping("MemberSelect.ad")
	public String MemberSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment=request.getParameter("alignment");
		//페이징처리
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));		
		int listCount = as.getlistCount(1);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);		
		List<Object> list = as.memberAllList(pi, alignment);		
				
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberList", list);
		model.addAttribute("pi", pi);
		
		return "admin/memberSelect"; 
	}
	//밴드조회 페이지 진입
	@RequestMapping("goBandSelect.ad")
	public String goBandSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment="bid";
		//페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int listCount = as.getlistCount(2);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);		
		List<Object> list = as.bandAllList(pi, alignment);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("bandList", list);
		model.addAttribute("pi", pi);
		return "admin/BandSelect";
	}
	//밴드조회 페이지 정렬
	@RequestMapping("BandSelect.ad")
	public String BandSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment = request.getParameter("alignment");
		//페이징처리
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));		
		int listCount = as.getlistCount(2);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.bandAllList(pi, alignment);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("bandList", list);
		model.addAttribute("pi", pi);
		return "admin/BandSelect";
	}
	//회원검색 페이지 진입
	@RequestMapping("goMemberSearch.ad")
	public String goMemberSearch(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		return "admin/MemberSearch";
	}
	//회원 검색해오기
	@RequestMapping("MemberSearch.ad")
	public String memberSearch(Model model, HttpServletRequest request) {
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String keyword = request.getParameter("searchNickName");
		//페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}		
		int listCount = as.getSearchlistCount(1, keyword);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.memberSearchList(pi, keyword);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberSearch", list);
		model.addAttribute("pi", pi);
		return "admin/MemberSearch";
	}
	//밴드검색 페이지 진입
	@RequestMapping("goBandSearch.ad")
	public String goBandSearch(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		return "admin/BandSearch";
	}
	//밴드 검색해오기
	@RequestMapping("BandSearch.ad")
	public String bandSearch(Model model, HttpServletRequest request) {
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String keyword = request.getParameter("keyword");
		String keywordValue = request.getParameter("keywordValue");
		//페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}		
		int listCount = 0;
		if(keywordValue.equals("bandName"))
			listCount = as.getSearchlistCount(2, keyword);
		else if(keywordValue.equals("bandMaster"))
			listCount = as.getSearchlistCount(3, keyword);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		System.out.println("pageInfo : " + pi);
		List<Object> list = as.bandSearchList(pi, keyword, keywordValue);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("bandSearch", list);
		model.addAttribute("pi", pi);
		return "admin/BandSearch";
	}
	//신고받은 회원 조회
	@RequestMapping("goBMSelect.ad")
	public String goBMSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}	
		int listCount = as.getlistCount(6);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.reportMemberList(pi);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportMember", list);
		model.addAttribute("pi", pi);
		return"admin/BlackMemberSelect";
	}
	//신고받은 밴드 조회
	@RequestMapping("goBBSelect.ad")
	public String goBBSelect(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}	
		int listCount = as.getlistCount(7);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.reportBandList(pi);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportBand", list);
		model.addAttribute("pi", pi);
		return "admin/BlackBandSelect";
	}
	//블랙리스트 회원 조회화면 이동
	@RequestMapping("goBlackMember.ad")
	public String goBlackMember(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment="mid";
		//페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}	
		int listCount = as.getlistCount(8);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.banMemberList(pi, alignment);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banMember", list);
		model.addAttribute("pi", pi);
		return "admin/BlackMember";
	}
	//블랙리스트 회원 조회 정렬화면
	@RequestMapping("BlackMember.ad")
	public String BlackMember(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment=request.getParameter("alignment");
		//페이징처리
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));		
		int listCount = as.getlistCount(8);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.banMemberList(pi, alignment);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banMember", list);
		model.addAttribute("pi", pi);
		return "admin/BlackMember";
	}
	//블랙리스트 밴드 조회
	@RequestMapping("goBlackBand.ad")
	public String goBlackBand(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment="bid";
		//페이징처리
		int currentPage = 1;
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}	
		int listCount = as.getlistCount(9);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.banBandList(pi, alignment);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banBand", list);
		model.addAttribute("pi", pi);
		return "admin/BlackBand";
	}
	//블랙리스트 밴드 조회 정렬화면
	@RequestMapping("BlackBand.ad")
	public String BlackBand(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		String alignment=request.getParameter("alignment");
		//페이징처리
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));		
		int listCount = as.getlistCount(2);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.banBandList(pi, alignment);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banBand", list);
		model.addAttribute("pi", pi);
		return "admin/BlackBand";
	}
}
