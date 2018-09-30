package com.kh.efp.band.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class Ban implements Serializable{

	private int banid;
	private int bid;
	private int mid;
	private String bantype;
	private String banreason;
	
	public Ban(){}

	public Ban(int banid, int bid, int mid, String bantype, String banreason) {
		super();
		this.banid = banid;
		this.bid = bid;
		this.mid = mid;
		this.bantype = bantype;
		this.banreason = banreason;
	}

	public int getBanid() {
		return banid;
	}

	public void setBanid(int banid) {
		this.banid = banid;
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

	public String getBantype() {
		return bantype;
	}

	public void setBantype(String bantype) {
		this.bantype = bantype;
	}

	public String getBanreason() {
		return banreason;
	}

	public void setBanreason(String banreason) {
		this.banreason = banreason;
	}

	@Override
	public String toString() {
		return "Ban [banid=" + banid + ", bid=" + bid + ", mid=" + mid + ", bantype=" + bantype + ", banreason="
				+ banreason + "]";
	}
	
	
}
