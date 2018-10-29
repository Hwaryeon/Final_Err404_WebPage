package com.kh.efp.admin.model.vo;

import java.sql.Date;

public class BanList implements java.io.Serializable{
	private int mid;  //Member ID
	private String memail; //Member Email
	private String mname; //Member Name
	private String mphone; //Member Phone
	private String mnational; //Member National Code
	private Date mdate;  //Member Entry Date
	private String mtype; //Member Type
	private String banreason; //遮断された理由
	private int bid; //Band ID
	private String bname; //Band Name
	private String cname; //Category Name
	private String bopen_status; //Band Open Status
	
	public BanList(){}
	
	public BanList(int mid, String memail, String mname, String mphone, String mnational, Date mdate, String mtype,
			String banreason, int bid, String bname, String cname, String bopen_status) {
		this.mid = mid;
		this.memail = memail;
		this.mname = mname;
		this.mphone = mphone;
		this.mnational = mnational;
		this.mdate = mdate;
		this.mtype = mtype;
		this.banreason = banreason;
		this.bid = bid;
		this.bname = bname;
		this.cname = cname;
		this.bopen_status = bopen_status;
	}

	public String getMtype() {
		return mtype;
	}

	public void setMtype(String mtype) {
		this.mtype = mtype;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getBopen_status() {
		return bopen_status;
	}

	public void setBopen_status(String bopen_status) {
		this.bopen_status = bopen_status;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMnational() {
		return mnational;
	}

	public void setMnational(String mnational) {
		this.mnational = mnational;
	}

	public Date getMdate() {
		return mdate;
	}

	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}

	public String getBanreason() {
		return banreason;
	}

	public void setBanreason(String banreason) {
		this.banreason = banreason;
	}

	@Override
	public String toString() {
		return "BanList [mid=" + mid + ", memail=" + memail + ", mname=" + mname + ", mphone=" + mphone + ", mnational="
				+ mnational + ", mdate=" + mdate + ", banreason=" + banreason + ", bid=" + bid + ", bname=" + bname
				+ ", cname=" + cname + ", bopen_status=" + bopen_status + "]";
	}
	
}
