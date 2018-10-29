package com.kh.efp.mainPage.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.commons.CommonUtils;
import com.kh.efp.mainPage.model.service.mainService;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.member.model.vo.loginUser;

@Controller
@SessionAttributes("loginUser")
public class MainPageController {
	@Autowired private mainService mps;
	
	@RequestMapping("newBand.mp")
	//バンドを作るページに進入
	public String newBand() {
		return "band/newBand";
	}
	
	@RequestMapping("createBand.mp")
	//新しいバンドを作る
	public String insertBand(Band b, Model model, HttpServletRequest request, @RequestParam(name="bandImage", required=false)MultipartFile photo){
		Profile pf = new Profile();
		
		String bname = request.getParameter("bname");
		String bOpenStatus = request.getParameter("bandStatus");
		b.setBname(bname);
		b.setBopen_status(bOpenStatus);
		
		System.out.println("Band b : " + b);
		String root = "";
		String filePath = "";
		String originFileName = "";
		String ext = "";
		String changeName = "";
		
		String coverType = request.getParameter("coverType");
		
		System.out.println("coverType : " + coverType);
		
		if(coverType.equals("Y")){
			root=request.getSession().getServletContext().getRealPath("resources");
			filePath=root + "/upload_images/";
			originFileName= photo.getOriginalFilename();
			ext=originFileName.substring(originFileName.lastIndexOf("."));
			changeName=CommonUtils.getRandomString();
		} else {
			originFileName = coverType + ".jpg";
			changeName = coverType;
			ext = ".jpg";
			filePath="C:/Users/user/git/FinalProject_Err/errFinProject/src/main/webapp/resources/images/cover/";
			
		}
		
		
		pf.setFileSrc(filePath);
		pf.setOriginName(originFileName);
		pf.setEditName(changeName + ext); 
		System.out.println("profile : " + pf);
		
		loginUser loginUser = (loginUser)request.getSession().getAttribute("loginUser");
		int mid = loginUser.getMid();
		System.out.println("mid : " + mid);
		
		if(photo.isEmpty())
			System.out.println("photo is Empty!");
		
		try {
			if(!photo.isEmpty()){
				photo.transferTo(new File(filePath + changeName + ext));
			}
			//プロフィール写真
			int result = mps.insertBand(pf, b, mid); 
				
			if(result == 0){
				return "common/errorPage";
			} else {
				int bid = mps.selectBandId(b);
				//他のサーバーにチャット要請
				// RestTemplateに MessageConverterを設置する
			    List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
			    converters.add(new FormHttpMessageConverter());
			    converters.add(new StringHttpMessageConverter());
			 
			    RestTemplate restTemplate = new RestTemplate();
			    restTemplate.setMessageConverters(converters);
			 
			    // parameter セット
			    MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
			    map.add("title", bname);
			    map.add("bid", String.valueOf(bid));
			    map.add("mid", String.valueOf(loginUser.getMid()));
			 
			    // REST API 呼出
			    String result2 = restTemplate.postForObject("http://192.168.20.246:3000/createRoom", map, String.class);
				
				model.addAttribute("loginUser", loginUser);
				model.addAttribute("myBandList", mps.bandList(mid));
				model.addAttribute("popContents", mps.popContent());
				model.addAttribute("rcmContents", mps.recommendContent(mid));
				return "redirect:/loginUserMain.me";
			}
		} catch (Exception e) {
			new File(filePath + changeName + ext).delete();
			
			//System.out.println("아마 여기서 에러나느거 같은대");
			
			return "common/errorPage";
		}
		
	}
}
