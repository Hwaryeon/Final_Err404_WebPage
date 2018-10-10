package com.kh.efp.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("loginUser")
public class adminTestController {
	//회원조회 페이지 진입
		@RequestMapping("goMemberSelect2.ad")
		public String goMemberSelect(Model model, HttpServletRequest request){
			//loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
			
			//model.addAttribute("loginUser", loginUser);
			//model.addAttribute("memberList", as.memberAllList());
			
			System.out.println("goMemberSelect2 호출됨");
			
			return "admin/memberSelect";
		}
}
