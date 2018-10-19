package com.kh.efp.band.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.vo.Ban;
import com.kh.efp.band.model.vo.BanMemberList;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Member_Band;
import com.kh.efp.commons.CommonUtils;
import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.newPost.model.service.newPostService;
import com.kh.efp.newPost.model.vo.Category;

@Controller
public class BandLeaderController {

	@Autowired private BandService bs;
	@Autowired private newPostService ns;
	
	public void bandLeftSideBar(int bid, int mid, Model model){
		
		String bname = bs.selectBandName(bid);  
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		Profile pf = new Profile();
		
		pf = bs.selectProfile(bid);
		
		mb = new Member_Band();
		
		mb.setBid(bid);
		mb.setMid(mid);
		
		int mlevel = bs.selectMlevel(mb);
		
		model.addAttribute("bname", bname);
		model.addAttribute("memberCount", mbList.size());
		model.addAttribute("pf", pf);
		
		model.addAttribute("bid", bid);
		model.addAttribute("mlevel", mlevel);
		
	}
	
	@RequestMapping("bandLeader.bd")
	public String showBandLeader(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		// 밴드 상세보기 왼쪽 프로필 채우기
		bandLeftSideBar(bid, mid, model);
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList2(mb);
		
		model.addAttribute("list", mbList);
		
		return "band/bandLeader";
	}
	
	
	@RequestMapping("bandOpenStatus.bd")
	public String bandOpenStatus(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		String status = bs.checkBandOpenStatus(bid);
		
		model.addAttribute("status", status);
		
		bandLeftSideBar(bid, mid, model);
		
		return "band/bandOpenStatus";
	}
	
	@RequestMapping("bandCategory.bd")
	public String bandCategory(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		ArrayList<Category> cList = ns.selectCategoryList();
		
		int cid = bs.checkBandCategory(bid);
		
		model.addAttribute("cid", cid);
		model.addAttribute("cList", cList);
		
		bandLeftSideBar(bid, mid, model);
		
		return "band/bandCategory";
	}
	
	@RequestMapping("changeStatus.bd")
	public String bandOptenStatusChange(@RequestParam int status, int bid, Model model){
		
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
		
		return "redirect:/bandLeader.bd?bid=" + bid;
	}
	
	@RequestMapping("bandMultiLeader.bd")
	public String bandMultiLeader(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		model.addAttribute("list", mbList); 
		
		return "band/bandMultiLeader";
	}
	
	
	@RequestMapping("bandChangeMultiLeader.bd")
	public String bandChangeMultiLeader(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		model.addAttribute("list", mbList);
		model.addAttribute("bid", bid);
		
		return "band/bandChangeMultiLeader";
	}
	
	@RequestMapping(value="insertBandMultiLeader.bd")
	public String insertBandMultiLeader(@RequestParam int mbid, int bid, Model model,
										HttpServletResponse response){
		
		System.out.println("insert bid : " + bid);
		
		bs.insertBandMultiLeader(mbid);
		
		return "redirect:/bandChangeMultiLeader.bd?bid=" + bid;
		
	}
	
	@RequestMapping(value="deleteBandMultiLeader.bd")
	public String deleteBandMultiLeader(@RequestParam int mbid, int bid, Model model,
										HttpServletResponse response){
		
		System.out.println("deleteBandMultiLeader 호출");
		
		System.out.println("mbid :" + mbid);
		
		bs.deleteBandMultiLeader(mbid);
		
		
		return "redirect:/bandMultiLeader.bd?bid=" + bid;
		
	}
	
	@RequestMapping(value="searchBandMultiLeader.bd")
	public String searchBandMultiLeader(@RequestParam int bid, String s, HttpServletRequest request, Model model,
										HttpServletResponse response){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
		mb.setMname(s);
				
		ArrayList<Member_Band> mbList = bs.searchMember_BandList(mb);
		
		model.addAttribute("list", mbList);
		
		return "band/bandChangeMultiLeader";
		
	}
	
	
	@RequestMapping("bandChangeLeader.bd")
	public String bandChangeLeader(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
				
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
				
		model.addAttribute("list", mbList);
		
		return "band/bandChangeLeader";
	}
	
	@RequestMapping(value="changeBandLeader.bd")
	public String changeBandLeader(@RequestParam int mbid, int bid, Model model,
										HttpServletResponse response){
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
		
		mb.setMbid(mbid);
		
		bs.changeBandLeader(mb);
		
		return "redirect:/bandLeader.bd?bid=" + bid;
		
	}
	
	@RequestMapping(value="searchBandLeader.bd")
	public String searchBandLeader(@RequestParam int bid, String s, HttpServletRequest request, Model model,
										HttpServletResponse response){

		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();	
		
		bandLeftSideBar(bid, mid, model);
				
		Member_Band mb = new Member_Band();
				
		mb.setBid(bid);
		mb.setMname(s);
				
		ArrayList<Member_Band> mbList = bs.searchMember_BandList(mb);
		
		model.addAttribute("list", mbList);
		
		return "band/bandChangeLeader";
		
	}
	
	@RequestMapping("bandSecession.bd")
	public String bandSecession(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		return "band/bandSecession";
	}
	
	@RequestMapping(value="secessionBand.bd")
	public String secessionBand(@RequestParam int bid, HttpServletRequest request, Model model,
										HttpServletResponse response){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		mb.setMid(mid);
		
		int mlevel = bs.selectMlevel(mb);
		
		if(mlevel == 1){
			
			//밴드 리더는 탈퇴가 불가능
			
			bandLeftSideBar(bid, mid, model);
			model.addAttribute("bid", bid);
			
			return "band/bandSecessionFail";
			
		}else{
			
			//이외에는 탈퇴 가능
			mb = new Member_Band();
			
			mb.setBid(bid);
			mb.setMid(mid);
			
			bs.secessionBand(mb);
			
			return "redirect:/loginUserMain.me";
		}
		
		
		/*return "redirect:/loginUserMain.me";*/
		
	}	
	
	@RequestMapping("bandDelete.bd")
	public String bandDelete(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		return "band/bandDelete";
	}
	
	
	@RequestMapping(value="deleteBand.bd")
	public String deleteBand(@RequestParam int bid, Model model,
										HttpServletResponse response){
		
		Member_Band mb = new Member_Band();
		mb.setBid(bid);
		
		bs.deleteBand(bid);
		
		
		return "redirect:/loginUserMain.me";
		
	}
	
	@RequestMapping("bandIntro.bd")
	public String bandIntro(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		String intro = bs.selectBandIntro(bid);
		
		model.addAttribute("intro", intro);
		
		return "band/bandIntro";
	}
	
	@RequestMapping("updateBandIntro.bd")
	public String updateBandIntro(@RequestParam String bandIntro, int bid, Model model){
		
		Band b = new Band();
		
		b.setBid(bid);
		b.setBintro(bandIntro);
		
		bs.updateBandIntro(b);
		
		return "redirect:/bandLeader.bd?bid=" + bid;
	}
	
	@RequestMapping("bandModify.bd")
	public String bandModify(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		return "band/bandModify";
	}
	
	
	@RequestMapping("updateBandModify.bd")
	public String updateBandModify(HttpServletRequest request,
			@RequestParam(name="bandProfile", required=false)MultipartFile photo, int bid, String coverType, String bandName,
			HttpServletResponse response){
		
		
		System.out.println("bid : " + bid);
		
		Band b = new Band();
		
		b.setBid(bid);
		b.setBname(bandName);
		
		bs.updateBandName(b);
		
		String root = "";
		String filePath = "";
		String originFileName = "";
		String ext = "";
		String changeName = "";
		
		if(coverType.equals("Y")){
			
			
			if(photo.getSize() != 0){
			
				root=request.getSession().getServletContext().getRealPath("resources");
				filePath=root + "/upload_images/";
				/*filePath = root + "\\upload_images";*/
				originFileName= photo.getOriginalFilename();
				ext=originFileName.substring(originFileName.lastIndexOf("."));
				changeName=CommonUtils.getRandomString();
			}
		} else {
			originFileName = coverType + ".jpg";
			changeName = coverType;
			ext = ".jpg";
			filePath="C:/Users/user/git/FinalProject_Err/errFinProject/src/main/webapp/resources/images/cover/";
			
		}
		
			Profile pf = new Profile();
			
			
			pf.setFileSrc(filePath);
			pf.setOriginName(originFileName);
			pf.setEditName(changeName + ext);
			pf.setBid(bid);
			
			System.out.println("pf : " + pf);
			
			
			try {
				if(!photo.isEmpty()){
					photo.transferTo(new File(filePath + "\\" + changeName + ext));
				}

				int result = 0;
				
				if(photo.getSize() != 0){
					result = bs.insertBandModify(pf);
				}
				
				if(result == 0){
					return "common/errorPage";
				}else{
					return "redirect:/bandLeader.bd?bid=" + bid;
				}
				
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		
		
		
		return "redirect:/bandLeader.bd?bid=" + bid;
	}
	
	@RequestMapping("bandMemberManagement.bd")
	public String bandMemberManagement(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		ArrayList<BanMemberList> banList = bs.selectBanMemberList(bid);
		
		int check = 0;
		
		model.addAttribute("list", mbList);
		model.addAttribute("banList", banList);
		model.addAttribute("check", check);
		
		return "band/bandMemberManagement";
	}
	
	@RequestMapping(value="searchBanMemberSearch.bd")
	public String searchBanMemberSearch(@RequestParam int bid, String s, HttpServletRequest request, Model model,
			HttpServletResponse response){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		mb.setMname(s);
		
		ArrayList<Member_Band> mbList = bs.searchMember_BandList(mb);
		
		mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<BanMemberList> banList = bs.selectBanMemberList(bid);
		
		int check = 0;
		
		model.addAttribute("list", mbList);
		model.addAttribute("banList", banList);
		model.addAttribute("check", check);
		
		return "band/bandMemberManagement";
		
	}
	
	@RequestMapping(value="searchBanMemberList.bd")
	public String searchBanMemberList(@RequestParam int bid, String s, HttpServletRequest request, Model model,
			HttpServletResponse response){
		
		System.out.println("searchBanMemberList.bd 호출됨");
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		Member_Band mb = new Member_Band();
		
		mb.setBid(bid);
		mb.setMname(s);
		
		ArrayList<BanMemberList> banList = bs.searchBanMemberList(mb);
		
		for(int i=0; i< banList.size(); i++){
			System.out.println(i + " : " + banList.get(i).toString());
		}
		
		mb = new Member_Band();
		
		mb.setBid(bid);
		
		ArrayList<Member_Band> mbList = bs.selectMember_BandList(mb);
		
		int check = 1;
		
		model.addAttribute("list", mbList);
		model.addAttribute("banList", banList);
		model.addAttribute("check", check);
		
		
		return "band/bandMemberManagement";
		
	}
	
	@RequestMapping("deleteBandMember.bd")
	public String deleteBandMember(@RequestParam int mbid, int mid, int radioVal, int bid, Model model){
		
		bs.deleteBandMember(mbid);
		
		if(radioVal == 2){
			
			Ban b = new Ban();
			
			b.setBid(bid);
			b.setMid(mid);
			b.setBantype("MB");
			b.setBanreason("밴드 관리자에 의한 차단");
			
			bs.insertBanMember(b);
			
		}
		
		return "redirect:/bandMemberManagement.bd?bid=" + bid;
	}
	
	
	@RequestMapping("deleteBanMember.bd")
	public String deleteBanMember(@RequestParam int banid, int bid, Model model){
		
		bs.deleteBanMember(banid);
		
		return "redirect:/bandMemberManagement.bd?bid=" + bid;
	}
	
	@RequestMapping("updateCategory.bd")
	public String updateCategory(@RequestParam int category, int bid, Model model){
		
		Band b = new Band();
		b.setBid(bid);
		b.setCid(category);
		
		bs.updateCategory(b);
		
		
		return "redirect:/bandLeader.bd?bid=" + bid;
	}
	
	@RequestMapping("insertMemberList.bd")
	public String insertMemberList(@RequestParam int bid, HttpServletRequest request, Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		ArrayList<Member_Band> list = bs.insertMemberList(bid);
		
		for(int i=0; i< list.size(); i++){
			System.out.println(i + " : " + list.get(i).toString());
		}
		
		model.addAttribute("list", list);
		
		return "band/bandInsertMember";
	}
	
	
	@RequestMapping("updateMemberStatus.bd")

	public String updateMemberStatus(@RequestParam int bid, int mbid, Model model){
		
		bs.updateMemberStatus(mbid);
		
		return "redirect:/insertMemberList.bd?bid=" + bid;
	}
	
	@RequestMapping("refuseMemberStatus.bd")
	public String refuseMemberStatus(@RequestParam int bid, int mbid, Model model){
		
		
		bs.refuseMemberStatus(mbid);
		
		
		return "redirect:/insertMemberList.bd?bid=" + bid;
	}
	
	@RequestMapping("bandBlock.bd")
	public String bandBlock(@RequestParam int bid, HttpServletRequest request,  Model model){
		
		int mid = ((Member)request.getSession().getAttribute("loginUser")).getMid();
		
		bandLeftSideBar(bid, mid, model);
		
		System.out.println("bandBlock.bd 호출");
		System.out.println("bid : " + bid);
		
		
		return "band/bandBlock";
	}
	
	
}
