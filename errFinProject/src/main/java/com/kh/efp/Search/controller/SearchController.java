package com.kh.efp.Search.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.efp.Search.model.service.SearchService;
import com.kh.efp.Search.model.vo.Search;

@Controller
public class SearchController {

	@Autowired SearchService seachservice ;
	
	@RequestMapping(value="/searchResult.search")
	public String searchResultFoward(String value){

		ArrayList<Search> searchResult = seachservice.selectSearchAll(value);
		
		for(Search s : searchResult){
			System.out.println(s.getP_file_Src() + ", " + s.getA_file_Src());
		}
		
		return "searchPage/searchResult";
	}
	
	@RequestMapping(value="/searchMorePost.search")
	public String searchMorePostFoward(){
		return "searchPage/searchMorePost";
	}
	
}
