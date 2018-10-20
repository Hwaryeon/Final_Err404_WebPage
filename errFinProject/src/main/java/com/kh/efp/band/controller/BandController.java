
package com.kh.efp.band.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.vo.Attfile;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.band.model.vo.Scehdule;
import com.kh.efp.commons.DayWeek;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.newPost.model.service.newPostService;
import com.kh.efp.newPost.model.vo.Boards;
import com.kh.efp.newPost.model.vo.MemberProfile;


@Controller
public class BandController {
	@Autowired private BandService bs;
	@Autowired private newPostService ns; 
	@Autowired private BandLeaderController blc;

	@RequestMapping("bandCalendarList.bd")
	public String showBandCalendar(@RequestParam int bid, HttpServletRequest request, Model model) throws Exception{
		
		System.out.println("달력 호출");
		System.out.println("bid : " + bid);
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		List<Object> list = new ArrayList<Object>();
		
		//임시로 설정
		/*int bid = 1;*/
		
		blc.bandLeftSideBar(bid, mid, model);
		
		list = bs.scehduleList(bid);
		
		model.addAttribute("sList", list);
		model.addAttribute("bid", bid);
		
		for(int i=0; i<list.size(); i++){
			String str = ((Scehdule) list.get(i)).getsDate();
			/*System.out.println(str.substring(8, 10));*/
			((Scehdule) list.get(i)).setDayNum(str.substring(5, 10));
			
			String day = DayWeek.getDateDay(((Scehdule) list.get(i)).getsDate().substring(0, 11), "yyyy-MM-dd");
			
			((Scehdule) list.get(i)).setDayWeek(day);
			
		}
		return "band/calandar";
	}
	

	@RequestMapping(value="eventCheck.bd", method=RequestMethod.POST)
	@ResponseBody 
	public Object eventCheck(@RequestParam String title, int bid, Map<String, Object> map,
										HttpServletResponse response) throws Exception{

		System.out.println("eventCheck 컨트롤러 호출..");
		System.out.println("eventCheck 컨트롤러 bid :" + bid);
		
		List<Object> list = new ArrayList<Object>();
		
		/*int bid = 1;*/
		
		list = bs.scehduleList(bid);
		
		for(int i=0; i<list.size(); i++){
			String str = ((Scehdule) list.get(i)).getsDate();
			/*System.out.println(str.substring(8, 10));*/
			((Scehdule) list.get(i)).setDayNum(str.substring(5, 10));
			
			String day = DayWeek.getDateDay(((Scehdule) list.get(i)).getsDate().substring(0, 11), "yyyy-MM-dd");
			
			((Scehdule) list.get(i)).setDayWeek(day);
			
		}
		
		Map<String, Object> ret = new HashMap<String, Object>();
		
		ret.put("eList", list);
		return ret;	
	}
	
	@RequestMapping("addCalendar.bd")
	public @ResponseBody HashMap<String, Object> addCalendar(
			@RequestParam String title, String content, String sDate, String eDate, int bid,
			HttpServletRequest request){
		
		System.out.println("addCalendar.bd bid : " + bid);
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		//임시로 설정
		/*int bid = 1;*/
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();

		Scehdule s = new Scehdule(sDate, eDate, title, content);
		
		s.setBid(bid);
		s.setMid(mid);
		
		int result = bs.insertScehdule(s);
		
		int next = bs.selectCurrval();

		hmap.put("next", next);

		return hmap;
	}
	
	@RequestMapping(value="deleteCalendar.bd")
	public @ResponseBody void deleteCalendar(@RequestParam int did, Model model,
										HttpServletResponse response){
		
		System.out.println("일정 삭제 컨트롤러 호출");
		
		System.out.println("did :" + did);
		
		bs.deleteScehdule(did);
		
	}
	

	@RequestMapping(value="updateCalendar.bd")
	public @ResponseBody void updateCalendar(@RequestParam int did,
							String title, String content, Model model,
										HttpServletResponse response){
			
			
		
		System.out.println("일정 수정 컨트롤러 호출");
		
		System.out.println("did :" + did);
		
		Scehdule s = new Scehdule(did, title, content);
		
		bs.updateScehdule(s);
		
		
		
	}
	
	@RequestMapping("Member_BandInsert.bd")
	public String Member_BandInsert(@RequestParam int bid, HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		String b = bs.selectBstatus(bid);
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		mb.setMid(mid);
		
		if(b.equals("PUB")){
			mb.setIstatus("Y");
		}else if(b.equals("PTD")){
			mb.setIstatus("S");
		}else if(b.equals("PRV")){
			mb.setIstatus("S");
		}
		
		System.out.println("mb : " + mb.toString());
		
		bs.insertMember_Band(mb);
		
		if(mb.getIstatus().equals("Y")){
			
		//다른서버로 채팅 요청하기
		// RestTemplate 에 MessageConverter 세팅
	    List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
	    converters.add(new FormHttpMessageConverter());
	    converters.add(new StringHttpMessageConverter());
	 
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.setMessageConverters(converters);
	 
	    // parameter 세팅
	    MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
	    map.add("bid", String.valueOf(bid));
	    map.add("mid", String.valueOf(mid));
	 
	    // REST API 호출
	   // String result2 = restTemplate.postForObject("http://127.0.0.1:3000/insertMember", map, String.class);
		}

		String bid2 = bid + "";
		
		return "redirect:/list.do?bid=" + bid2;
	}
	
	
	@RequestMapping("bandBoardDetail.bd")
	public String bandBoardDetail(@RequestParam int boardid, HttpServletRequest request,
			HttpServletResponse response, Model model) throws Exception{
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		Boards b = bs.selectBoardDetail(boardid);
		
		int bid = b.getBid();
		
		blc.bandLeftSideBar(bid, mid, model);
		
		ArrayList<Boards> list = bs.selectRefList(boardid);
		
		for(int i=0; i<list.size(); i++){
			System.out.println(i + " : " + list.get(i).toString());
		}
		
		ArrayList<MemberProfile> mList = new ArrayList<MemberProfile>();
		
		for(int i=0; i<list.size(); i++){
			mList.add(ns.selectMemberProfile(list.get(i).getMid()));
			
		}
		
		Attfile a = bs.selectAttFile(boardid);
		
		System.out.println("a : " + a);
		
		model.addAttribute("boards", b);
		model.addAttribute("commentList", list);
		model.addAttribute("count", list.size());
		model.addAttribute("mList", mList);
		model.addAttribute("att", a);
		
		return "band/bandBoardDetail";
	}

}

