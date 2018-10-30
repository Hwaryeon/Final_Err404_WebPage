package com.kh.efp.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.efp.admin.model.service.adminService;
import com.kh.efp.admin.model.vo.ReportList;
import com.kh.efp.commons.Pagination;
import com.kh.efp.member.model.vo.loginUser;
import com.kh.efp.member_band.model.vo.PageInfo;

@Controller
@SessionAttributes("loginUser")
public class AdminController {
	@Autowired private adminService as; 
	
	//会員照会
	@RequestMapping("MemberSelect.ad")
	public String goMemberSelect(String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//ページング
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount(1);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.memberAllList(pi);
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberList", list);
		model.addAttribute("pi", pi);
		return "admin/memberSelect"; 
	}
	//バンド照会
	@RequestMapping("BandSelect.ad")
	public String goBandSelect(String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//ページング
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount(2);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);		
		List<Object> list = as.bandAllList(pi);
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("bandList", list);
		model.addAttribute("pi", pi);
		return "admin/BandSelect";
	}
	//会員検索ページ進入
	@RequestMapping("goMemberSearch.ad")
	public String goMemberSearch(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		
		return "admin/MemberSearchBar";
	}
	//会員検索
	@RequestMapping("MemberSearch.ad")
	public String memberSearch(@RequestParam("keyword") String keyword, int currentPage, String requestCurrentPage, Model model, HttpServletRequest request) {
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//ページング
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);	
		int listCount = as.getSearchlistCount(1, keyword);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.memberSearchList(pi, keyword);
		
		System.out.println("currentPage : " + currentPage);
		System.out.println("list : " + list);
		System.out.println("pi : " + pi);
		System.out.println("keyword : " + keyword );
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("memberSearch", list);
		model.addAttribute("pi", pi);
		model.addAttribute("keyword", keyword);
		return "admin/MemberSearch";
	}
	//バンド検索ページ進入
	@RequestMapping("goBandSearch.ad")
	public String goBandSearch(Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
		return "admin/BandSearchBar";
	}
	//バンド検索
	@RequestMapping("BandSearch.ad")
	public String bandSearch(@RequestParam("keyword") String keyword, int currentPage,  String keywordValue,
			String requestCurrentPage, Model model, HttpServletRequest request) {
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		
		//ページング
		System.out.println("keyword : " + keyword);
		System.out.println("keywordValue : " + keywordValue);
		System.out.println("currentPage : " + currentPage);
		
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
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
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("keywordValue", keywordValue);
		
		return "admin/BandSearch";
	}
	//申告された会員照会
	@RequestMapping("ReportMemberSelect.ad")
	public String goBMSelect(String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//ページング
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount(3);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.reportMemberList(pi);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportMember", list);
		model.addAttribute("pi", pi);
		return "admin/ReportMember";
	}
	//申告された会員詳細照会
	@RequestMapping("showReportMember.ad")
	public String showReportMember(@RequestParam("mid") int mid, String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");

		System.out.println("mid : " + mid);
		System.out.println("requestCurrentPage : " + requestCurrentPage);
		
		//ページング
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount2(1, mid);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.showReportMember(pi, mid);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportMember", list);
		model.addAttribute("pi", pi);
		model.addAttribute("cid", ((ReportList)list.get(0)).getCid());
		
		return "admin/ReportMemberSelect";
	}
	//BlackListに入れる
	@RequestMapping("insertBlackMember.ad")
	public String insertBlackMember(@RequestParam int cid, String banReason, HttpServletRequest request){
		int result = as.insertBlackMember(cid, banReason);
		if(result == 0)
			return "common/errorPage";
		else
			return "redirect:/BlackMember.ad";
	}
	//申告されたバンド照会
	@RequestMapping("ReportBandSelect.ad")
	public String goBBSelect(String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//ページング
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount(4);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		System.out.println("pi : " + pi);
		List<Object> list = as.reportBandList(pi);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportBand", list);
		model.addAttribute("pi", pi);
		return "admin/ReportBand";
	}
	//申告されたバンド詳細照会
	@RequestMapping("showReportBand.ad")
	public String showReportBand(@RequestParam("bid") int bid, String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//페이징처리
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount2(2, bid);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		List<Object> list = as.showReportBand(pi, bid);
			
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("reportBand", list);
		model.addAttribute("pi", pi);
		model.addAttribute("cid", ((ReportList)list.get(0)).getBid());
			
		return "admin/ReportBandSelect";
	}
	//BlackListに入れる
	@RequestMapping("insertBlackBand.ad")
	public String insertBlackBand(@RequestParam("cid") int bid, String banReason, HttpServletRequest request){
		int result = as.insertBlackBand(bid, banReason);
		if(result == 0)
			return "common/errorPage";
		else
			return "redirect:/BlackBand.ad";
	}
	//BlackList会員照会
	@RequestMapping("BlackMember.ad")
	public String goBlackMember(String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//ページング
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount(5);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		System.out.println("pi : " + pi);
		List<Object> list = as.banMemberList(pi);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banMember", list);
		model.addAttribute("pi", pi);
		return "admin/BlackMember";
	}
	
	//BlackListバンド照会
	@RequestMapping("BlackBand.ad")
	public String goBlackBand(String requestCurrentPage, Model model, HttpServletRequest request){
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		//ページング
		int currentPage = 1;
		if(requestCurrentPage != null)
			currentPage = Integer.parseInt(requestCurrentPage);
		int listCount = as.getlistCount(6);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		System.out.println("pi : " + pi);
		List<Object> list = as.banBandList(pi);
		
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("banBand", list);
		model.addAttribute("pi", pi);
		return "admin/BlackBand";
	}
}
