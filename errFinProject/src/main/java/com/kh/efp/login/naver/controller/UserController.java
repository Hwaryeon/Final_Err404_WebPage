package com.kh.efp.login.naver.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.efp.login.naver.model.service.loginService;
import com.kh.efp.login.naver.model.vo.JsonStringParse;
import com.kh.efp.login.naver.model.vo.NaverLoginBO;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Controller
@SessionAttributes("loginUser")
public class UserController {
	@Autowired loginService ls;
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	private JsonStringParse jsonparse = new JsonStringParse();
	/* NaverLoginBO */
	@Inject
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@RequestMapping(value="testlogin.lg", method = RequestMethod.POST)
	public void login(HttpSession session, HttpServletResponse response) {
		/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		System.out.println("controller 호출");
		
		 
		 ObjectMapper mapper = new ObjectMapper();
		 
		 String url = naverAuthUrl.replace("\"", "");
			try {
				response.getWriter().println(mapper.writeValueAsString(url));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		 
	}

	@RequestMapping(value="/callback.lg",method = RequestMethod.GET)
	public ModelAndView callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
		/* 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급 */

		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		apiResult = naverLoginBO.getUserProfile(oauthToken);
 System.out.println(apiResult);

		JSONObject jsonobj = jsonparse.stringToJson(apiResult, "response");
		String email = jsonparse.JsonToString(jsonobj, "email");
		String name = jsonparse.JsonToString(jsonobj, "nickname");
		String profile = jsonparse.JsonToString(jsonobj, "profile_image");
		
		System.out.println("토큰 : " + oauthToken.getAccessToken());
		System.out.println("리얼? " + oauthToken.getRefreshToken());

		Member m = new Member();
		m.setmToken(oauthToken.getRefreshToken());
		m.setmEmail(email);
		m.setmName(name);
		
		Profile pf = new Profile();
		System.out.println(profile);
		
		int index = profile.lastIndexOf("/");
		
		String fileName = profile.substring(index + 1, profile.length());
		String fileSrc = profile.substring(0, index + 1);
		
		pf.setEditName(fileName);
		pf.setOriginName(fileName);
		pf.setFileSrc(fileSrc);
		
		Member loginUser = ls.selectNaverMember(m, pf);

		return new ModelAndView("main/main", "loginUser", loginUser);
	}
	
}
