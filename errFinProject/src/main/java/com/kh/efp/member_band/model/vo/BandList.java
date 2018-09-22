package com.kh.efp.member_band.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class BandList implements java.io.Serializable{
	private int mid;
	private int bid;
	private String bName;
	private String iStatus;
	private Date iDate;
	private String editName;
	
	public BandList(){}

	public BandList(int mid, int bid, String bName, String iStatus, Date iDate, String editName) {
		super();
		this.mid = mid;
		this.bid = bid;
		this.bName = bName;
		this.iStatus = iStatus;
		this.iDate = iDate;
		this.editName = editName;
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

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getiStatus() {
		return iStatus;
	}

	public void setiStatus(String iStatus) {
		this.iStatus = iStatus;
	}

	public Date getiDate() {
		return iDate;
	}

	public void setiDate(Date iDate) {
		this.iDate = iDate;
	}

	public String getEditName() {
		return editName;
	}

	public void setEditName(String editName) {
		this.editName = editName;
	}

	@Override
	public String toString() {
		return "BandList [mid=" + mid + ", bid=" + bid + ", bName=" + bName + ", iStatus=" + iStatus + ", iDate="
				+ iDate + ", editName=" + editName + "]";
	}

	
	
	
	
	
}
