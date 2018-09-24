package com.kh.efp.login.google.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.Connection;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.social.google.api.plus.Person;
import org.springframework.social.google.api.plus.PlusOperations;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.efp.login.google.model.service.GgService;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Controller
@SessionAttributes("loginUser")
public class ggLoginController {
	@Autowired private GoogleConnectionFactory googleConnectionFactory;
	@Autowired private OAuth2Parameters googleOAuth2Parameters;
	@Autowired private GgService gs;
	private OAuth2Operations oauthOperations;
	
	
	@RequestMapping(value = "gg.lg", method = RequestMethod.POST)
	public void doGoogleSignInActionPage(HttpServletResponse response, Model model) throws Exception{
	  oauthOperations = googleConnectionFactory.getOAuthOperations();
	  String ggurl = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);

	  	ObjectMapper mapper = new ObjectMapper();
		 
		 String url = ggurl.replace("\"", "");
			try {
				response.getWriter().println(mapper.writeValueAsString(url));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 

	}
	@RequestMapping(value = "googleSignInCallback.lg", method = RequestMethod.GET)
	public String doSessionAssignActionPage(@RequestParam String code, Model model)throws Exception{
	  System.out.println("/member/googleSignInCallback");
	  System.out.println("code : " + code);
	  System.out.println("뭐가 문제지 : " + googleOAuth2Parameters.getRedirectUri());
	  
	  oauthOperations = googleConnectionFactory.getOAuthOperations();
	  AccessGrant accessGrant = oauthOperations.exchangeForAccess(code , googleOAuth2Parameters.getRedirectUri(), null);

	  String accessToken = accessGrant.getAccessToken();
	  String refreshToken = accessGrant.getRefreshToken();
	  System.out.println(refreshToken);
	  Long expireTime = accessGrant.getExpireTime();
	  if (expireTime != null && expireTime < System.currentTimeMillis()) {
	    accessToken = accessGrant.getRefreshToken();
	    System.out.printf("accessToken is expired. refresh token = {}", accessToken);
	  }
	  Connection<Google> connection = googleConnectionFactory.createConnection(accessGrant);
	  Google google = connection == null ? new GoogleTemplate(accessToken) : connection.getApi();

	  PlusOperations plusOperations = google.plusOperations();
	  Person profile = plusOperations.getGoogleProfile();
	  
	  	
	  Member m = new Member();
	  
	  System.out.println("g : " +  profile.getId()); //토큰값
	  System.out.println("g : " +  profile.getDisplayName()); //이름
	  System.out.println("g : " +  profile.getEmailAddresses().toArray()[0]); //이메일
	  System.out.println("g : " +  profile.getImageUrl()); //이미지

	  m.setmEmail((String)profile.getEmailAddresses().toArray()[0]);
	  m.setmName(profile.getDisplayName());
	  m.setmToken(profile.getId());
	  
	  Profile pf = new Profile();
	  
	  String imgurl = profile.getImageUrl();
	  
	  int index = imgurl.lastIndexOf("/");
		
		String fileName = imgurl.substring(index + 1, imgurl.length());
		String fileSrc = imgurl.substring(0, index + 1);
	  
		System.out.println(fileName);
		System.out.println(fileSrc);

		pf.setEditName(fileName);
		pf.setOriginName(fileName);
		pf.setFileSrc(fileSrc);
		
		Member loginUser = gs.insertMember(m, pf);
		
		model.addAttribute("loginUser", loginUser);
		
	  return "main/main";
	}
}
