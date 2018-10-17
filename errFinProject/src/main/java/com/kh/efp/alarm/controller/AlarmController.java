package com.kh.efp.alarm.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.efp.alarm.model.serivce.AlarmService;
import com.kh.efp.alarm.model.vo.Alarm;
import com.kh.efp.member.model.vo.Member;

@Controller
public class AlarmController {

	@Autowired
	AlarmService alarmService;
	
	@RequestMapping(value="NewAlarm.alarm")
	public void NewAlarm(HttpServletRequest req, HttpServletResponse res){
		
		HttpSession session = req.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		if(m != null){
			int mid  = m.getMid();
			
			ArrayList<Alarm> list = alarmService.selectListAlarm(mid);
			System.out.println(list);
		}
		
		
		try {
			res.getWriter().print("");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
