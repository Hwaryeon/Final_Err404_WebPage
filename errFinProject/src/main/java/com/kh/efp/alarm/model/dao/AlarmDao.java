package com.kh.efp.alarm.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.efp.alarm.model.vo.Alarm;

public interface AlarmDao {

	ArrayList<Alarm> selectListAlarm(SqlSessionTemplate sqlSession, int mid);

	void updateNews(SqlSessionTemplate sqlSession);

	int deleteAllAlarm(SqlSessionTemplate sqlSession, int mid);

	int deleteOneAlarm(SqlSessionTemplate sqlSession, int nid);

}
