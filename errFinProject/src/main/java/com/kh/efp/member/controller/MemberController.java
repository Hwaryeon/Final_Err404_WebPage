package com.kh.efp.member.controller;


import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.efp.band.model.service.BandService;
import com.kh.efp.commons.CommonUtils;
import com.kh.efp.commons.MailHandler;
import com.kh.efp.commons.TempKey;
import com.kh.efp.login.naver.model.vo.NaverLoginBO;
import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.service.MemberService;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.member.model.vo.loginUser;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired private MemberService ms;
	@Autowired private BCryptPasswordEncoder passwordEncoder;
	@Autowired private NaverLoginBO naverLoginBO;
	@Autowired private FacebookConnectionFactory connectionFactory;
    @Autowired private OAuth2Parameters oAuth2Parameters;
    @Autowired private GoogleConnectionFactory googleConnectionFactory;
    @Autowired private BandService bs;
    
    @Inject
    private JavaMailSender mailSender;


    //회원가입 페이지 이동
	@RequestMapping("memberJoinForm.me")
	public String showMemberJoinForm(HttpSession session, Model model){
		//네이버  로그인 경로
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		model.addAttribute("url", naverAuthUrl);
		
		//페북 로그인 경로
		OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
        String facebook_url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, oAuth2Parameters);
        model.addAttribute("FB_url", facebook_url);

        //구글 로그인 경로
        OAuth2Operations oauthOperations2 = googleConnectionFactory.getOAuthOperations();
        String url = oauthOperations2.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, oAuth2Parameters);

        model.addAttribute("ggurl",url);
		
		return "member/memberJoinForm";
	}

	//회원가입
	@RequestMapping("joinMember.me")
	public String insertMember(Model model, Member m, HttpServletRequest request,
			@RequestParam(name="userImage", required=false)MultipartFile photo){
		Profile pf = new Profile();
		
		m.setmPwd(passwordEncoder.encode(m.getmPwd())); //비밀번호 암호화
		System.out.println(passwordEncoder.encode(m.getmPwd()));
		String root = "";
		String filePath = "";
		String originFileName = "";
		String ext = "";
		String changeName = "";

		System.out.println("photo : " + photo);

		//프사 여부확인
		if(!photo.isEmpty()){
			root = request.getSession().getServletContext().getRealPath("resources");

			filePath = root + "\\upload_images";

			originFileName = photo.getOriginalFilename();
			ext = originFileName.substring(originFileName.lastIndexOf("."));

			changeName = CommonUtils.getRandomString();
		}else{
			originFileName = "user.png"; //없으면 강제로 기본 프사 입력
			changeName = "user";
			ext = ".png";
			filePath = "C:\\Users\\user\\git\\FinalProject_Err\\errFinProject\\src\\main\\webapp\\resources\\upload_images";

		}

		pf.setFileSrc(filePath);
		pf.setOriginName(originFileName);
		pf.setEditName(changeName + ext);
		System.out.println("controller m : " + m + " / pf : " + pf);
		try {
			
			//사진 유무 확인 후 파일 저장
			if(!photo.isEmpty()){
				
			photo.transferTo(new File(filePath + "\\" + changeName + ext));
			}


			int result = ms.insertMember(m, pf); //프사와 멤버객체 저장

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

	//로그인 하기
	@RequestMapping(value = "login.me")
	public String loginUser(Member m, Model model){
		System.out.println("login m : " + m);
		try {
			//세션에 올라감
      loginUser loginUser = ms.loginMember2(m);

			int mid = loginUser.getMid();
			
      model.addAttribute("loginUser", loginUser);
      
			model.addAttribute("myBandList", bs.bandList(mid));

			System.out.println(loginUser);


			return "main/main";

		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());

			return "common/errorPage";

		}

	}

	//닉네임 중복확인(ajax)
	@RequestMapping("checkmName.me")
	public @ResponseBody HashMap<String, Object> checkmName(@RequestParam String mName){
		HashMap<String, Object> hmap = new HashMap<String, Object>();

		int check = ms.checkmName(mName);

		hmap.put("check", check);

		return hmap;
	}


	//개인정보 페이지 이동
	@RequestMapping("showMemberInfo_update.me")
	public String showMemberInfoUpdate(@RequestParam int mid, Model model){
		System.out.println("info mid : " + mid);

		//프로필 정보 가져옴
		model.addAttribute("memberProfile", ms.selectMemberProfile(mid));

		System.out.println("show model : " + model);

		return "member/memberInfo_update";
	}
	
	//프사 변경 ajax(objectmapper)
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
	
	//이름 변경
	@RequestMapping("ChangedName.me")
	public void ChangedName(@RequestParam("mName") String mName,
							@RequestParam("mid") String mid,
							Model model, HttpServletResponse response){
		ObjectMapper mapper = new ObjectMapper();
		System.out.println("아니 " + mid + " / " + mName);
		int imid = Integer.parseInt(mid);
		
		//이름이 없다면 실패
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
			//로그인 유저 갱신
			model.addAttribute("loginUser", ms.selectMember(m));

			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	//연락처 중복확인
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
	
	//연락처 변경
	@RequestMapping("ChangedPhone.me")
	public void ChangedPhone(@RequestParam("mPhone") String mPhone,
							 @RequestParam("mid") String mid,
							 Model model, HttpServletResponse response){
		ObjectMapper mapper = new ObjectMapper();
		System.out.println("controll : " + mPhone);
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
		m.setmPhone(mPhone);
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
	

	//패스워드 기존값과 비교

	@RequestMapping("CkPwd.me")
	public void CkPwd(String old, String mid, HttpServletResponse response){
		int imid = Integer.parseInt(mid);
		
		ObjectMapper mapper = new ObjectMapper();
		
		Member m = new Member();
		
		m.setmPwd(old);
		m.setMid(imid);
		
		int result = ms.chPwd(m);
		
		try {
			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

	//패스워드 변경

	@RequestMapping("ChangedPwd.me")
	public void ChangedPwd(String newPwd, String mid, HttpServletResponse response){
		int imid = Integer.parseInt(mid);
		
		Member m = new Member();
		
		m.setMid(imid);
		m.setmPwd(passwordEncoder.encode(newPwd));
		
		int result = ms.updatemPwd(m);
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	//이메일 인증

	@RequestMapping("checkEmail.me")
	public void CheckEmail(String mEmail, Model model, HttpServletRequest request, HttpServletResponse response){
		
		String key = new TempKey().getKey(6, false); // 인증키 생성
		
		MailHandler sendMail;
		try {
			sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[Err404 이메일 인증]");
		sendMail.setText(
				new StringBuffer().append("<h1>메일 인증</h1><br><br>").append("<h4>안녕하세요. Err404 입니다.</h4>").append("<h4>해당 인증 번호를 인증 번호 칸에 입력 해 주세요 : " + key + "</h4>").toString());
		sendMail.setFrom("gogildong09@gmail.com", "Err404");
		sendMail.setTo(mEmail);
		sendMail.send();
		
		System.out.println(key);
		
		ObjectMapper mapper = new ObjectMapper();
		
		response.getWriter().println(mapper.writeValueAsString(key));
		} catch (MessagingException | UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

	//이메일 중복확인

	@RequestMapping("cntEmail.me")
	public void cntEmail(String mEmail, HttpServletResponse response){
		System.out.println("쳌");
		int result = ms.selectCntEmail(mEmail);
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	//아이디 비밀번호 창으로 이동
	@RequestMapping("searchIdnPwd.me")
	public String searchIdnPwd(){
		return "member/searchIdnPwd";
	}
	
	//이메일 찾기
	@RequestMapping("findEmail.me")
	public void findEmail(String mName, String mPhone, HttpServletResponse response) throws Exception{
		Member m = new Member();
		
		m.setmName(mName);
		m.setmPhone(mPhone);
		
		String mEmail = ms.selectmEmail(m);
		System.out.println(mEmail);
		ObjectMapper mapper = new ObjectMapper();
		
			
			if(mEmail == null || "".equals(mEmail)){
				response.getWriter().println(mapper.writeValueAsString("nope"));
			}else{
				try {
					response.getWriter().println(mapper.writeValueAsString(mEmail));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
	}

	@RequestMapping("findPwd.me")
	public void mEamil(String mEmail, Model model, HttpServletRequest request, HttpServletResponse response){
		Member m = new Member();
		m.setmEmail(mEmail);
		
		int result = ms.selectAuthmEmail(m);
		
		ObjectMapper mapper = new ObjectMapper();
		
		if(result == 1){
			
		
		String key = new TempKey().getKey(12, false); // 인증키 생성
		
		MailHandler sendMail;
		try {
			sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[Err404 비밀번호 찾기]");
		sendMail.setText(
				new StringBuffer().append("<h1>비밀번호 찾기</h1><br><br>").append("<h4>안녕하세요. Err404 입니다.</h4>").append("<h4>해당 인증 번호를 인증 번호 칸에 입력 해 주세요 : " + key + "</h4>").toString());
		sendMail.setFrom("gogildong09@gmail.com", "Err404");
		sendMail.setTo(mEmail);
		sendMail.send();
		
		System.out.println(key);
		
		response.getWriter().println(mapper.writeValueAsString(key));
		} catch (MessagingException | UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else{
			try {
				response.getWriter().println(mapper.writeValueAsString("nope"));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping("chPwdMid.me")
	public void chPwdMid(String mEmail, String newPwd1, HttpServletResponse response){
		Member m = new Member();
		m.setmEmail(mEmail);
		m.setmPwd(passwordEncoder.encode(newPwd1));
		
		int result = ms.updateMidmPwd(m);
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("goMain.me")
	public String goMain(){
		return "main/loginMember";		
	}
	
	@RequestMapping("logout.me")
	public String logout(HttpSession session){
		/*SessionStatus status;*/
		session.invalidate();
		return "main/loginMember";		
	}

	
	@RequestMapping("deleteMember.me")
	public void deleteMember(String mid, HttpServletResponse response){
		int imid = Integer.parseInt(mid);
		
		int result = ms.updatemStatus(imid);
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			response.getWriter().println(mapper.writeValueAsString(result));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
