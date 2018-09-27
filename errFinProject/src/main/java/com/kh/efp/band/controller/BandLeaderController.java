package com.kh.efp.band.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;

@Controller
public class BandLeaderController {

	@Autowired private BandService bs;
	
	@RequestMapping("bandLeader.bd")
	public String showBandLeader(Model model){
		
		System.out.println("밴드 리더 컨트롤러 호출");
		
		
		return "band/bandLeader";
	}
	
	@RequestMapping("bandOpenStatus.bd")
	public String bandOpenStatus(Model model){
		
		System.out.println("bandOpenStatus.bd 호출");
		
		
		return "band/bandOpenStatus";
	}
	
	@RequestMapping("changeStatus.bd")
	public String bandOptenStatusChange(int status, Model model){
		
		System.out.println("changeStatus.bd 호출");

		//임시로 설정함
		int bid = 1;
		
		String str;
		
		if(status == 1){
			str = "PRV";
		}else if(status == 2){
			str = "PTD";
		}else{
			str = "PUB";
		}
		
		Band b = new Band();
		
		b.setBid(bid);
		b.setBopen_status(str);
		
		bs.updateBandOpenStatus(b);
		
		return "band/bandOpenStatus";
	}
	
	@RequestMapping("bandMultiLeader.bd")
	public String bandMultiLeader(Model model){
		
		System.out.println("bandMultiLeader.bd 호출");
		
		//임시로 설정함
		int bid = 1;
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		
		/*for(int i=0; i< mbList.size(); i++){
			
			if(mbList.get(i).getMlevel().equals("3")){
				System.out.println("i : " + mbList.get(i).toString());
			}
			
		}*/
		
		model.addAttribute("list", mbList); 
		
		return "band/bandMultiLeader";
	}
	
	
	@RequestMapping("bandChangeMultiLeader.bd")
	public String bandChangeMultiLeader(Model model){
		
		System.out.println("bandChangeMultiLeader.bd 호출");
		
		//임시로 설정함
		int bid = 1;
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		model.addAttribute("list", mbList);
		
		return "band/bandChangeMultiLeader";
	}
	
	@RequestMapping(value="insertBandMultiLeader.bd")
	public String insertBandMultiLeader(@RequestParam int mbid, Model model,
										HttpServletResponse response){
		
		System.out.println("insertBandMultiLeader 호출");
		
		System.out.println("mbid :" + mbid);
		
		bs.insertBandMultiLeader(mbid);
		
		
		return "redirect:/bandChangeMultiLeader.bd";
		
	}
	
	@RequestMapping(value="deleteBandMultiLeader.bd")
	public String deleteBandMultiLeader(@RequestParam int mbid, Model model,
										HttpServletResponse response){
		
		System.out.println("deleteBandMultiLeader 호출");
		
		System.out.println("mbid :" + mbid);
		
		bs.deleteBandMultiLeader(mbid);
		
		
		return "redirect:/bandMultiLeader.bd";
		
	}
	
	@RequestMapping(value="searchBandMultiLeader.bd")
	public String searchBandMultiLeader(@RequestParam String s, Model model,
										HttpServletResponse response){
		
		System.out.println("searchBandMultiLeader 호출");
		
		System.out.println("s :" + s);
		
		//임시로 설정함
		int bid = 1;
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
		mb.setMname(s);
				
		ArrayList<Member_Band> mbList = bs.searchMember_BandList(mb);
		
		model.addAttribute("list", mbList);
		
		return "band/bandChangeMultiLeader";
		
	}
	
	
	@RequestMapping("bandChangeLeader.bd")
	public String bandChangeLeader(Model model){
		
		System.out.println("bandChangeMultiLeader.bd 호출");
		
		//임시로 설정함
		int bid = 1;
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
				
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
				
		model.addAttribute("list", mbList);
		
		return "band/bandChangeLeader";
	}
	
	@RequestMapping(value="changeBandLeader.bd")
	public String changeBandLeader(@RequestParam int mbid, Model model,
										HttpServletResponse response){
		
		System.out.println("changeBandLeader 호출");
		
		System.out.println("mbid :" + mbid);
		
		//임시로 설정함
		int bid = 1;
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
		
		mb.setMbid(mbid);
		
		bs.changeBandLeader(mb);
		
		return "redirect:/bandLeader.bd";
		
	}
	
	@RequestMapping(value="searchBandLeader.bd")
	public String searchBandLeader(@RequestParam String s, Model model,
										HttpServletResponse response){
		
		System.out.println("searchBandLeader 호출");
		
		System.out.println("s :" + s);
		
		//임시로 설정함
		int bid = 1;
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
		mb.setMname(s);
				
		ArrayList<Member_Band> mbList = bs.searchMember_BandList(mb);
		
		model.addAttribute("list", mbList);
		
		return "band/bandChangeLeader";
		
	}
	
	@RequestMapping("bandSecession.bd")
	public String bandSecession(Model model){
		
		System.out.println("bandSecession.bd 호출");
		
		
		return "band/bandSecession";
	}
	
	@RequestMapping(value="secessionBand.bd")
	public String secessionBand(@RequestParam int bid, int mid, Model model,
										HttpServletResponse response){
		
		System.out.println("secessionBand.bd 호출");
		
		System.out.println("bid : " + bid);
		System.out.println("mid : " + mid);
		
		Member_Band mb = new Member_Band();
		mb.setBid(bid);
		mb.setMid(mid);
		
		bs.secessionBand(mb);
		
		
		return "band/bandLeader";
		
	}	
	
	@RequestMapping("bandDelete.bd")
	public String bandDelete(Model model){
		
		System.out.println("bandDelete.bd 호출");
		
		
		return "band/bandDelete";
	}
	
	
	@RequestMapping(value="deleteBand.bd")
	public String deleteBand(@RequestParam int bid, Model model,
										HttpServletResponse response){
		
		System.out.println("deleteBand.bd 호출");
		
		System.out.println("bid : " + bid);
		
		Member_Band mb = new Member_Band();
		mb.setBid(bid);
		
		bs.deleteBand(bid);
		
		
		return "band/bandLeader";
		
	}
	
	@RequestMapping("bandIntro.bd")
	public String bandIntro(Model model){
		
		System.out.println("bandIntro.bd 호출");
		
		
		return "band/bandIntro";
	}
}
