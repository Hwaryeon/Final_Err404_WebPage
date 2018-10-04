package com.kh.efp.category.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.efp.category.model.service.CategoryService;
import com.kh.efp.category.model.vo.CategoryBandList;

@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;
	
	public CategoryController() {}
	
	@RequestMapping(value="categoryDetail.category")
	public String categoryDetail(@RequestParam("kind") String kind, Model model){
		
		//특문 구분자
		switch(kind){
		case "cpp" : kind = "C++"; break;
		case "csharp" : kind= "C#"; break;
		}
		
		ArrayList<CategoryBandList> list = categoryService.selectList(kind);
		
		model.addAttribute("kind", kind);
		model.addAttribute("list", list);
		
		return "category/categoryDetail";
	}

}
