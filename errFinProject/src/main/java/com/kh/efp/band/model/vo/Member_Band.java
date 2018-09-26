package com.kh.efp.band.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Member_Band implements Serializable{
	
	private int mbid;
	private int bid;
	private int mid;
	private Date idate;
	private String istatus;
	private String mlevel;
	private String mname;
	
	public Member_Band(){}
	
	public Member_Band(int mbid, int bid, int mid, Date idate, String istatus, String mlevel, String mname) {
		super();
		this.mbid = mbid;
		this.bid = bid;
		this.mid = mid;
		this.idate = idate;
		this.istatus = istatus;
		this.mlevel = mlevel;
		this.mname = mname;
	}

	public int getMbid() {
		return mbid;
	}

	public void setMbid(int mbid) {
		this.mbid = mbid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public Date getIdate() {
		return idate;
	}

	public void setIdate(Date idate) {
		this.idate = idate;
	}

	public String getIstatus() {
		return istatus;
	}

	public void setIstatus(String istatus) {
		this.istatus = istatus;
	}

	public String getMlevel() {
		return mlevel;
	}

	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	@Override
	public String toString() {
		return "Member_Band [mbid=" + mbid + ", bid=" + bid + ", mid=" + mid + ", idate=" + idate + ", istatus="
				+ istatus + ", mlevel=" + mlevel + ", mname=" + mname + "]";
	}

	
	
}
