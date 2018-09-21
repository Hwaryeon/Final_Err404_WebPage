package com.kh.efp.member.model.vo;

import java.sql.Date;

public class Profile implements java.io.Serializable{
	private int pid;
	private String originName;
	private String editName;
	private String fileSrc;
	private Date fdate;
	private String ftype;
	private int mid;
	private int bid;
	
	public Profile(){}
	
	public Profile(int pid, String originName, String editName, String fileSrc, Date fdate, String ftype, int mid,
			int bid) {
		super();
		this.pid = pid;
		this.originName = originName;
		this.editName = editName;
		this.fileSrc = fileSrc;
		this.fdate = fdate;
		this.ftype = ftype;
		this.mid = mid;
		this.bid = bid;
	}

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getEditName() {
		return editName;
	}
	public void setEditName(String editName) {
		this.editName = editName;
	}
	public String getFileSrc() {
		return fileSrc;
	}
	public void setFileSrc(String fileSrc) {
		this.fileSrc = fileSrc;
	}
	public Date getFdate() {
		return fdate;
	}
	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}
	public String getFtype() {
		return ftype;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}

	@Override
	public String toString() {
		return "Profile [pid=" + pid + ", originName=" + originName + ", editName=" + editName + ", fileSrc=" + fileSrc
				+ ", fdate=" + fdate + ", ftype=" + ftype + ", mid=" + mid + ", bid=" + bid + "]";
	}
	

	
}
