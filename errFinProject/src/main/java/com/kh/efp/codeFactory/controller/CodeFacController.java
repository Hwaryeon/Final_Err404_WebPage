package com.kh.efp.codeFactory.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.efp.codeFactory.model.vo.ExecuteResult;

@Controller
public class CodeFacController {

	
	@RequestMapping(value="codeFactoryMain.codeFac")
	public String codeFactoryMainForward(){
		return "codeFactory/codeFactoryMain";
	}
	
	@RequestMapping(value="submitCode.codeFac")
	public void submitCode(HttpServletRequest req, HttpServletResponse res){
		String code = req.getParameter("code");
		String language = req.getParameter("language");
		ExecuteCode exc = new ExecuteCode();
		ExecuteResult ert = exc.CompileCode(code, language);
		
		try {
			res.setCharacterEncoding("UTF-8");
			res.getWriter().print(URLDecoder.decode(ert.getOutput(), "utf-8"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
