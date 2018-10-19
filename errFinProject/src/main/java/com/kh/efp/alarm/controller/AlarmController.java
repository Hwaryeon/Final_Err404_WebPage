package com.kh.efp.alarm.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
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
		
		ArrayList<Alarm> list = null;
		
		if(m != null){
			int mid  = m.getMid();
			list = alarmService.selectListAlarm(mid);
		}
		
		String jsons = new Gson().toJson(list);
		res.setCharacterEncoding("UTF-8");
		
		try {
			res.getWriter().print(jsons);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="AllDeleteAlarm.alarm")
	public void AllDeleteAlarm(HttpServletRequest req, HttpServletResponse res){
		HttpSession session = req.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		
		int result = 0;
		
		if(m != null)
			result = alarmService.deleteAllAlarm(m.getMid());
		try {
			res.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="OnloadAlarm.alarm")
	public void OnloadAlarm(HttpServletRequest req, HttpServletResponse res){
		HttpSession session = req.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		ArrayList<Alarm> list = null;
		int result = 0;
		if(m != null){
			int mid  = m.getMid();
			list = alarmService.selectListAlarm(mid);
		}
		
		if(list.size() != 0){
			result = 1;
		}
		
		try {
			res.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="deleteOneAlarm.alarm")
	public void deleteOneAlarm(String nid, HttpServletRequest req, HttpServletResponse res){
		int result = 0;
		
		if(nid != null){
			result = alarmService.deleteOneAlarm(Integer.parseInt(nid));
		}
		
		try {
			res.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
