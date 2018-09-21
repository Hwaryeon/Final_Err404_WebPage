package com.kh.efp.band.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class Scehdule implements Serializable{

	private int did;
	private int bid;
	private int mid;
	private String sDate;
	private String eDate;
	private String title;
	
	public Scehdule(){}
	
	public Scehdule(String sDate, String eDate, String title) {
		super();
		this.sDate = sDate;
		this.eDate = eDate;
		this.title = title;
	}

	public Scehdule(int did, int bid, int mid, String sDate, String eDate, String title) {
		super();
		this.did = did;
		this.bid = bid;
		this.mid = mid;
		this.sDate = sDate;
		this.eDate = eDate;
		this.title = title;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
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

	public String getsDate() {
		return sDate;
	}

	public void setsDate(String sDate) {
		this.sDate = sDate;
	}

	public String geteDate() {
		return eDate;
	}

	public void seteDate(String eDate) {
		this.eDate = eDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Scehdule [did=" + did + ", bid=" + bid + ", mid=" + mid + ", sDate=" + sDate + ", eDate=" + eDate
				+ ", title=" + title + "]";
	}

	
	
}
