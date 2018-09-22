package com.kh.efp.member.controller;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
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
		pf.setEditName(changeName + ext);
		System.out.println("controller m : " + m + " / pf : " + pf);
		try {
			
			if(!photo.isEmpty()){
				
			photo.transferTo(new File(filePath + "\\" + changeName + ext));
			}


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


	@RequestMapping("showMemberInfo_update.me")
	public String showMemberInfoUpdate(@RequestParam int mid, Model model){
		System.out.println("info mid : " + mid);

		model.addAttribute("memberProfile", ms.selectMemberProfile(mid));

		System.out.println("show model : " + model);

		return "member/memberInfo_update";
	}

	@RequestMapping("insertChangedProfile.me")
	public void insertChangedProfile(HttpServletRequest request,
			@RequestParam(name="uploadFile", required=false)MultipartFile photo, HttpServletResponse response){

		int mid = Integer.parseInt(request.getParameter("mid"));

		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\upload_images";
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();


		Profile pf = new Profile();

		pf.setEditName(changeName + ext);
		pf.setFileSrc(filePath);
		pf.setOriginName(originFileName);
		pf.setMid(mid);

		try {
			photo.transferTo(new File(filePath + "\\" + changeName + ext));
			System.out.println("digh");

			int result = ms.insertChangedProfile(pf);

			ObjectMapper mapper = new ObjectMapper();

			if(result == 0){
				System.out.println("인설트안됌");
			}else{

				System.out.println("뭐여이건");

				response.getWriter().println(mapper.writeValueAsString(result));
			}
		} catch (Exception e) {
			new File(filePath + "\\" + changeName + ext).delete();
		}
	}

	@RequestMapping("ChangedName.me")
	public void ChangedName(@RequestParam("mName") String mName,
							@RequestParam("mid") String mid,
							Model model, HttpServletResponse response){
		ObjectMapper mapper = new ObjectMapper();
		System.out.println("아니 " + mid + " / " + mName);
		int imid = Integer.parseInt(mid);
		
		if(mName.equals("")){
			try {
				response.getWriter().println(mapper.writeValueAsString(false));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return;
		}
		
		Member m = new Member();
		m.setmName(mName);
		m.setMid(imid);
		
		int result = ms.updatemName(m);
		System.out.println("업데이트");
		try {
			model.addAttribute("loginUser", ms.selectMember(m));

			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@RequestMapping("checkmPhone.me")
	public void checkmPhone(@RequestParam("mPhone") String mPhone,
							HttpServletResponse response){
		ObjectMapper mapper = new ObjectMapper();
		
		System.out.println(mPhone);
		
		int cnt = ms.selectmPhone(mPhone);
		
		System.out.println(cnt);
		try {
			response.getWriter().println(mapper.writeValueAsString(cnt));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("ChangedPhone.me")
	public void ChangedPhone(@RequestParam("mPhone") String mPhone,
							 @RequestParam("mid") String mid,
							 Model model, HttpServletResponse response){
		ObjectMapper mapper = new ObjectMapper();

		int imid = Integer.parseInt(mid);
		
		if(mPhone.equals("")){
			try {
				response.getWriter().println(mapper.writeValueAsString(false));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return;
		}
		
		Member m = new Member();
		m.setmName(mPhone);
		m.setMid(imid);
		
		int result = ms.updatemPhone(m);

		try {
			model.addAttribute("loginUser", ms.selectMember(m));

			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
