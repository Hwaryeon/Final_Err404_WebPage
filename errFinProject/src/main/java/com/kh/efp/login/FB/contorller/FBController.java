package com.kh.efp.login.FB.contorller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.MissingAuthorizationException;
import org.springframework.social.connect.Connection;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.social.facebook.api.UserOperations;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
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
import com.kh.efp.login.FB.model.service.FBService;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

@Controller
@SessionAttributes("loginUser")
public class FBController{
	@Autowired FBService fbs;
	// 페이스북 oAuth 관련
    @Autowired
    private FacebookConnectionFactory connectionFactory;
    @Autowired
    private OAuth2Parameters oAuth2Parameters;
 
// join  뷰로 매핑
    @RequestMapping(value = "FBurl.lg", method = { RequestMethod.GET, RequestMethod.POST })
    public void join(HttpServletResponse response, Model model) {
        
        OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
        String facebook_url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, oAuth2Parameters);
    
        System.out.println("/facebook" + facebook_url);
        
        ObjectMapper mapper = new ObjectMapper();
		 
		 String url = facebook_url.replace("\"", "");
			try {
				response.getWriter().println(mapper.writeValueAsString(url));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
 
    }

    @RequestMapping(value = "facebookSignInCallback.lg", method = { RequestMethod.GET, RequestMethod.POST })
    public String facebookSignInCallback(@RequestParam String code, Model model) throws Exception {
 
        try {
             String redirectUri = oAuth2Parameters.getRedirectUri();
            System.out.println("Redirect URI : " + redirectUri);
            System.out.println("Code : " + code);
 
            OAuth2Operations oauthOperations = connectionFactory.getOAuthOperations();
            AccessGrant accessGrant = oauthOperations.exchangeForAccess(code, redirectUri, null);
            String accessToken = accessGrant.getAccessToken();
            System.out.println("AccessToken: " + accessToken);
            Long expireTime = accessGrant.getExpireTime();
            String RefreshToken = accessGrant.getRefreshToken();
            System.out.println("RefreshToken : " + RefreshToken);
            
            
            if (expireTime != null && expireTime < System.currentTimeMillis()) {
                accessToken = accessGrant.getRefreshToken();
                /*logger.info("accessToken is expired. refresh token = {}", accessToken);*/
            };
            
        
            Connection<Facebook> connection = connectionFactory.createConnection(accessGrant);
            Facebook facebook = connection == null ? new FacebookTemplate(accessToken) : connection.getApi();
            UserOperations userOperations = facebook.userOperations();
            
            try
 
            {            
                String [] fields = { "id", "email",  "name"};
                User userProfile = facebook.fetchObject("me", User.class, fields);
                System.out.println("유저이메일 : " + userProfile.getEmail());
                System.out.println("유저 id : " + userProfile.getId());
                System.out.println("유저 name : " + userProfile.getName());
                
                
                
                Member m = new Member();
                
                if(userProfile.getEmail() == null){
                	m.setmEmail("-");
                }else{
                	m.setmEmail(userProfile.getEmail());
                }
                
                m.setmName(userProfile.getName());
                m.setmToken(userProfile.getId());
                
                Profile pf = new Profile();
                
                pf.setFileSrc("http://graph.facebook.com/" + userProfile.getId() + "/");
                pf.setEditName("picture?type=square");
                pf.setOriginName("picture?type=square");
                
                Member loginUser = fbs.insertFBMember(m, pf);
                
                model.addAttribute("loginUser", loginUser);
                
            } catch (MissingAuthorizationException e) {
                e.printStackTrace();
            }
 
        
        } catch (Exception e) {
 
            e.printStackTrace();
 
        }
        return "main/main";
 
    }

	
	
}