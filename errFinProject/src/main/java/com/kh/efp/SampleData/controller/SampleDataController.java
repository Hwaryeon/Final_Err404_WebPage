package com.kh.efp.SampleData.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SampleDataController {

	@RequestMapping(value="/sampleForward.sample", method=RequestMethod.GET)
	public String sampleForward(){
		return "sampleData/sampleData";
	}
	
	@RequestMapping(value="/CreateServlet.sample", method=RequestMethod.POST)
	public void CreateServlet(String valueJson, String row_amount,HttpServletRequest req, HttpServletResponse res){
		int _row_amount = Integer.parseInt(row_amount);
		CreateSampleData csd = new CreateSampleData(req, res);
		String result = csd.createData(valueJson, _row_amount);
		
		System.out.println("나왔음");
		
	}
}
