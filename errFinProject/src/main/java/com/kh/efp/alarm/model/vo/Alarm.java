package com.kh.efp.alarm.model.vo;

import java.sql.Date;

public class Alarm implements java.io.Serializable{

	private String nType;
	private Date alarm_Date;
	private String bContent;
	private String bName;
	private String mName;
	
	public Alarm() {}

	public Alarm(String nType, Date alarm_Date, String bContent, String bName, String mName) {
		super();
		this.nType = nType;
		this.alarm_Date = alarm_Date;
		this.bContent = bContent;
		this.bName = bName;
		this.mName = mName;
	}

	public String getnType() {
		return nType;
	}

	public void setnType(String nType) {
		this.nType = nType;
	}

	public Date getAlarm_Date() {
		return alarm_Date;
	}

	public void setAlarm_Date(Date alarm_Date) {
		this.alarm_Date = alarm_Date;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	@Override
	public String toString() {
		return "Alarm [nType=" + nType + ", alarm_Date=" + alarm_Date + ", bContent=" + bContent + ", bName=" + bName
				+ ", mName=" + mName + "]";
	}
	

	
	
}
