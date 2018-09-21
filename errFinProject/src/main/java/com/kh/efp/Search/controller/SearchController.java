package com.kh.efp.Search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {

	@RequestMapping(value="/searchResult.search")
	public String searchResultFoward(){
		return "searchPage/searchResult";
	}
	
	@RequestMapping(value="/searchMorePost.search")
	public String searchMorePostFoward(){
		return "searchPage/searchMorePost";
	}
	
}
