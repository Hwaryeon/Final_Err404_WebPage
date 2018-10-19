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


	//모든 알림 제거
	@Override
	public int deleteAllAlarm(int mid) {
		return alarmDao.deleteAllAlarm(sqlSession, mid);
	}

	//알림 한개 제거
	@Override
	public int deleteOneAlarm(int nid) {
		return alarmDao.deleteOneAlarm(sqlSession, nid);
	}
}
