package com.kh.efp.band.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
