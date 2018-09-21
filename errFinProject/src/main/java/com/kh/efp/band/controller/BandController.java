package com.kh.efp.band.controller;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.member.model.exception.LoginException;
import com.kh.efp.member.model.service.MemberService;
import com.kh.efp.member.model.vo.Member;

@Controller
public class BandController {
	@Autowired private BandService bs;

	@RequestMapping("bandCalendarList.bd")
	public String showMemberJoinForm(Model model){
		
		System.out.println("달력 호출");
		
		List<Object> list = new ArrayList<Object>();
		
		list = bs.scehduleList();
		
		for(int i =0; i < list.size(); i++){
			System.out.println( i+" : " + list.get(i).toString());
		}
		
		model.addAttribute("sList", list); 
		
		return "band/calandar";
	}
	
	@RequestMapping(value="addCalendar.bd")
	public void duplicationCheck(@RequestParam String title, String sDate, String eDate,
										HttpServletResponse response){
			
			
		/*System.out.println("title : " + title);
		System.out.println("sDate : " + sDate);
		System.out.println("eDate : " + eDate);*/
			
		Scehdule s = new Scehdule(sDate, eDate, title);
		
		/*System.out.println("s : " + s);*/
		
		int result = bs.insertScehdule(s);
		
		try {
			response.getWriter().print(false);
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}

	

}
