package com.kh.efp.Search.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.efp.Search.model.service.SearchService;
import com.kh.efp.Search.model.vo.Search;
import com.twitter.penguin.korean.KoreanPosJava;
import com.twitter.penguin.korean.KoreanTokenJava;
import com.twitter.penguin.korean.TwitterKoreanProcessorJava;
import com.twitter.penguin.korean.phrase_extractor.KoreanPhraseExtractor;
import com.twitter.penguin.korean.tokenizer.KoreanTokenizer;

import scala.collection.Seq;

@Controller
public class SearchController {

	@Autowired SearchService seachservice ;
	
	@RequestMapping(value="/searchResult.search")
	public String searchResultFoward(String value){

		ArrayList<String> lists = new ArrayList<String>(Arrays.asList(value.split(" ")));
		HashMap<String, ArrayList<Search>> searchResult = seachservice.selectSearchAll(lists);
		
		System.out.println("조회된 밴드 - ");
		for(Search s : searchResult.get("band")){
			System.out.println(s);
		}
		System.out.println();
		System.out.println("조회된 게시글 - ");
		for(Search s : searchResult.get("contents")){
			System.out.println(s);
		}

		
		return "searchPage/searchResult";
	}
	
	@RequestMapping(value="/searchMorePost.search")
	public String searchMorePostFoward(){
		return "searchPage/searchMorePost";
	}
	
}
