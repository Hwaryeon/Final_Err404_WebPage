package com.kh.efp.Search.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
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
	public String searchResultFoward(String value, Model model){
		
		//필터한 결과를 list로 전달
		ArrayList<String> list = filterBox(value);
		
		// band = 밴드 결과 , contents = 게시글 검색결과
		HashMap<String, ArrayList<Search>> searchResult = new HashMap<String, ArrayList<Search>>();
		
		//만약 검색한 값들이 없다면 값 비움
		if(list.size() != 0){
			searchResult = seachservice.selectSearchAll(list);
		}else{
			searchResult.put("band", new ArrayList<Search>());
			searchResult.put("contents", new ArrayList<Search>());
		}
		
		/*System.out.println("조회된 밴드 - ");
		for(Search s : searchResult.get("band")){
			System.out.println(s);
		}
		System.out.println();
		System.out.println("조회된 게시글 - ");
		for(Search s : searchResult.get("contents")){
			System.out.println(s);
		}*/
		
		model.addAttribute("result", value);							//검색한 값
		model.addAttribute("band", searchResult.get("band"));			//밴드 검색결과
		model.addAttribute("contents", searchResult.get("contents"));	//게시글 검색결과
		
		return "searchPage/searchResult";
	}
	
	//스크롤시 밴드 리스트 5개씩 생성
	@RequestMapping(value="/newBandList.search", method=RequestMethod.GET)
	public void newBandList(@RequestParam("page") String page, @RequestParam("value") String value, HttpServletResponse res){
		
		//검색 결과 정리후 반환
		ArrayList<String> list = filterBox(value);
		
		int pageNum = Integer.parseInt(page);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bandList", list);
		map.put("startPage", pageNum);
		map.put("endPage", pageNum+4);
		ArrayList<Search> fiveBandResult = seachservice.selectFiveBand(map);
		
		String jsons = new Gson().toJson(fiveBandResult);
		res.setCharacterEncoding("UTF-8");
		try {
			res.getWriter().print(jsons);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//넘어온 검색할 값을 정리후 반환
	public ArrayList<String> filterBox(String value){
		//스크립트 인젝션을 방지할 < or > 제거
		String text = value.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
		
		CharSequence normalized = TwitterKoreanProcessorJava.normalize(text);
		Seq<KoreanTokenizer.KoreanToken> tokens = TwitterKoreanProcessorJava.tokenize(normalized);
		
		int textLength = TwitterKoreanProcessorJava.tokensToJavaStringList(tokens).size();
		List<KoreanTokenJava> n = TwitterKoreanProcessorJava.tokensToJavaKoreanTokenList(tokens);
		List<KoreanPhraseExtractor.KoreanPhrase> phrases = TwitterKoreanProcessorJava.extractPhrases(tokens, true, true);
		
		//모든 검색문을 공백단위로 분리해서 리스트에 넣는다
		ArrayList<String> list = new ArrayList<String>();
		String[] arr = text.split(" ");
		
		//검색할 리스트중 비어있는 공백은 전부 제거
		for(int i=0; i<arr.length; i++){
			if(arr[i].length() != 0 || !arr[i].isEmpty()){
				list.add(arr[i]);
			}
		}

		//그후 다시 정규화 후 분할하여 각각 리스트에 넣는다
		for(int i=0; i < textLength ; i++){
			if(n.get(i).getPos().equals(KoreanPosJava.Noun)){
				list.add(n.get(i).getText());
			}else if(n.get(i).getPos().equals(KoreanPosJava.Hashtag)){
				list.add(n.get(i).getText().substring(1));
			}
		}
		
		//또 구문단위로도 넣는다.
		for(int i=0; i < phrases.size() ; i++)
			list.add(phrases.get(i).text());
		
		
		return list;
	}
	
	//더 많은 게시글보기시 forward
	@RequestMapping(value="/searchMorePost.search")
	public String searchMorePostFoward(String value, Model model){
		//필터한 결과를 list로 전달
		ArrayList<String> list = filterBox(value);
		
		// band = 밴드 결과 , contents = 게시글 검색결과
		ArrayList<Search> searchResult = null;
		
		//만약 검색한 값들이 없다면 값 비움
		if(list.size() != 0){
			searchResult = seachservice.selectSearchMorePost(list);
		}
		
		model.addAttribute("result", value);							//검색한 값
		model.addAttribute("contents", searchResult);	//게시글 검색결과
		
		return "searchPage/searchMorePost";
	}

	//스크롤시 게시글 리스트 5개씩 생성
	@RequestMapping(value="/newContentsList.search", method=RequestMethod.GET)
	public void newContentsList(@RequestParam("page") String page, @RequestParam("value") String value, HttpServletResponse res){
		//검색 결과 정리후 반환
		ArrayList<String> list = filterBox(value);
		int pageNum = Integer.parseInt(page);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("contentsList", list);
		map.put("startPage", pageNum);
		map.put("endPage", pageNum+4);
		ArrayList<Search> fiveContentsResult = seachservice.selectFiveContents(map);
		
		String jsons = new Gson().toJson(fiveContentsResult);
		res.setCharacterEncoding("UTF-8");
		try {
			res.getWriter().print(jsons);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
}
