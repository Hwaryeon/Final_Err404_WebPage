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

	//모든 알림 제거
	@Override
	public int deleteAllAlarm(SqlSessionTemplate sqlSession, int mid) {
		return sqlSession.delete("Alarm.deleteAllAlarm",mid);
	}

	@Override
	public int deleteOneAlarm(SqlSessionTemplate sqlSession, int nid) {
		return sqlSession.delete("Alarm.deleteOneAlarm",nid);
	}

}
