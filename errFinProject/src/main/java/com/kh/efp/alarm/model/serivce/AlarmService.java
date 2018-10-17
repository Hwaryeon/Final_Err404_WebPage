package com.kh.efp.alarm.model.serivce;

import java.util.ArrayList;

import com.kh.efp.alarm.model.vo.Alarm;

public interface AlarmService {

	ArrayList<Alarm> selectListAlarm(int mid);

}
