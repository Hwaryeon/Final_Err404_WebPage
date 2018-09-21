package com.kh.efp.member.controller;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.efp.commons.CommonUtils;
import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.service.MemberService;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired private MemberService ms;
	@Autowired BCryptPasswordEncoder passwordEncoder;

	@RequestMapping("memberJoinForm.me")
	public String showMemberJoinForm(){
		return "member/memberJoinForm";
	}

	@RequestMapping("joinMember.me")
	public String insertMember(Model model, Member m, HttpServletRequest request,
			@RequestParam(name="userImage", required=false)MultipartFile photo){
		Profile pf = new Profile();
		m.setmPwd(passwordEncoder.encode(m.getmPwd()));
		System.out.println(passwordEncoder.encode(m.getmPwd()));
		String root = "";
		String filePath = "";
		String originFileName = "";
		String ext = "";
		String changeName = "";
		
		System.out.println("photo : " + photo);
		
		if(!photo.isEmpty()){
		root = request.getSession().getServletContext().getRealPath("resources");

		filePath = root + "\\upload_images";

		originFileName = photo.getOriginalFilename();
		ext = originFileName.substring(originFileName.lastIndexOf("."));

		changeName = CommonUtils.getRandomString();
		}else{
			originFileName = "user.png";
			changeName = "user";
			ext = ".png";
			filePath = "C:\\Users\\user\\git\\FinalProject_Err\\errFinProject\\src\\main\\webapp\\resources\\upload_images";
			
		}
		
		pf.setFileSrc(filePath);
		pf.setOriginName(originFileName);
		pf.setEditName(changeName);
		System.out.println("controller m : " + m + " / pf : " + pf);
		try {
			photo.transferTo(new File(filePath + "\\" + changeName + ext));


			int result = ms.insertMember(m, pf);

			if(result == 0){
				return "common/errorPage";
			}else{
				return "main/loginMember";
			}

		} catch (Exception e) {
			new File(filePath + "\\" + changeName + ext).delete();
			return "common/errorPage";
		}

	}

	@RequestMapping(value = "login.me")
	public String loginUser(Member m, Model model){
		System.out.println("login m : " + m);
		try {
			model.addAttribute("loginUser", ms.loginMember(m));

			return "main/main";

		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());

			return "common/errorPage";

		}

	}

	@RequestMapping("checkmName.me")
	public @ResponseBody HashMap<String, Object> checkmName(@RequestParam String mName){
		HashMap<String, Object> hmap = new HashMap<String, Object>();

		int check = ms.checkmName(mName);

		hmap.put("check", check);

		return hmap;
	}

}
