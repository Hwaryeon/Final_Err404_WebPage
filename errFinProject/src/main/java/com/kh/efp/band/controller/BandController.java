package com.kh.efp.band.controller;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		/*for(int i =0; i < list.size(); i++){
			System.out.println( i+" : " + list.get(i).toString());
		}*/
		
		model.addAttribute("sList", list); 
		
		return "band/calandar";
	}
	
	@RequestMapping(value="eventCheck.bd", method=RequestMethod.POST)
	@ResponseBody 
	public Object eventCheck(@RequestParam String title, Map<String, Object> map,
										HttpServletResponse response){
			
			
		System.out.println("eventCheck 컨트롤러 호출..");
		
		List<Object> list = new ArrayList<Object>();
		
		list = bs.scehduleList();
		
		Map<String, Object> ret = new HashMap<String, Object>();
		
		ret.put("eList", list);
		return ret;	
	}
	
	/*@RequestMapping(value="addCalendar.bd")
	public void addCalendar(@RequestParam String title, String sDate, String eDate,
										HttpServletResponse response){
			
		Scehdule s = new Scehdule(sDate, eDate, title);
		
		int result = bs.insertScehdule(s);
		
		try {
			response.getWriter().print(false);
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}*/
	
	/*@RequestMapping(value="addCalendar.bd")
	public String addCalendar(@RequestParam String title, String sDate, String eDate, Model model,
										HttpServletResponse response){
		
		System.out.println("title : " + title);
		System.out.println("sDate : " + sDate);
		System.out.println("eDate : " + eDate);
		
		Scehdule s = new Scehdule(sDate, eDate, title);
		
		int result = bs.insertScehdule(s);
		
		int next = bs.selectCurrval();
		
		System.out.println("next : " +next);
		
		
		return "redirect:/bandCalendarList.bd";
	}*/
	
	@RequestMapping("addCalendar.bd")
	public @ResponseBody HashMap<String, Object> addCalendar2(
			@RequestParam String title, String content, String sDate, String eDate){
		
		System.out.println("title : " + title);
		System.out.println("content : " + content);
		System.out.println("sDate : " + sDate);
		System.out.println("eDate : " + eDate);
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();

		Scehdule s = new Scehdule(sDate, eDate, title, content);
		
		int result = bs.insertScehdule(s);
		
		int next = bs.selectCurrval();
		
		System.out.println("next : " +next);

		hmap.put("next", next);

		return hmap;
	}
	
	@RequestMapping(value="deleteCalendar.bd")
	public String deleteCalendar(@RequestParam int did, Model model,
										HttpServletResponse response){
			
			
		
		System.out.println("일정 삭제 컨트롤러 호출");
		
		System.out.println("did :" + did);
		
		int result = bs.deleteScehdule(did);
		
		return "redirect:/bandCalendarList.bd";
		
		
	}

	

}
