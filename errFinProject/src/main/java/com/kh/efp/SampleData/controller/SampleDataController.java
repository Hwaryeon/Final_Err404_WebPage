package com.kh.efp.SampleData.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

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
	
	@RequestMapping(value="/CreateServlet.down", method=RequestMethod.POST)
	public void CreateServlet(String valueJson, String row_amount,HttpServletRequest req, HttpServletResponse res){
		int _row_amount = Integer.parseInt(row_amount);
		CreateSampleData csd = new CreateSampleData(req, res);
		boolean result = csd.createData(valueJson, _row_amount);
        String fileName = "sampleBox.csv";
        OutputStream outs = null;
        FileInputStream fis = null;

        try{
        	res.setCharacterEncoding("EUC-KR");
        	res.setContentType("text/csv;");
	        res.setHeader("Content-Type", "application/octet-stream;");
	        res.setHeader("Content-Transfer-Encoding", "binary");
	        res.setHeader("Content-Disposition", "attachment;fileName=\"" + fileName + "\";");
	        outs = res.getOutputStream();
	        try{
	            fis = new FileInputStream(fileName);
	            
	            int ch;
	            while((ch = fis.read()) != -1){
	            	outs.write(ch);				//파일 다운로드 요청
	            }
		        outs.close();
		        fis.close();
		        outs.flush();
	
	        }catch (IOException e){
	            res.setContentLength(0);
	            System.out.println("File not found.");
	            e.printStackTrace();
	        }finally{
	            if(outs!=null){
		            outs.close();
		            outs = null;
	            }
	            if(fis!=null){
		            fis.close();
		            fis = null;
	            }
	        }
	        
        }catch(Exception e){
        	e.printStackTrace();
        }
        
		
        new File("sampleBox.csv").delete();	//파일 삭제
	}
}
