package com.kh.efp.alarm.model.serivce;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.alarm.model.dao.AlarmDao;
import com.kh.efp.alarm.model.vo.Alarm;

@Service
public class AlarmServiceImpl implements AlarmService{

	@Autowired AlarmDao alarmDao;
	@Autowired private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Alarm> selectListAlarm(int mid) {
		UpdateAlarm();
		return alarmDao.selectListAlarm(sqlSession, mid);
	}
	
	
	public void UpdateAlarm(){
		alarmDao.updateNews(sqlSession);
	}
}
