package com.kh.efp.alarm.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.alarm.model.vo.Alarm;

@Repository
public class AlarmDaoImpl implements AlarmDao{

	@Override
	public ArrayList<Alarm> selectListAlarm(SqlSessionTemplate sqlSession, int mid) {
		return (ArrayList)sqlSession.selectList("Alarm.selectListAlarm", mid);
	}

	@Override
	public void updateNews(SqlSessionTemplate sqlSession) {
		sqlSession.selectOne("updateNews");
	}

}
