package com.kh.efp.band.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class BanMemberList implements Serializable {

	private int banid;
	private int mid;
	private String mname;
	
	public BanMemberList(){}

	public BanMemberList(int banid, int mid, String mname) {
		super();
		this.banid = banid;
		this.mid = mid;
		this.mname = mname;
	}

	public int getBanid() {
		return banid;
	}

	public void setBanid(int banid) {
		this.banid = banid;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	@Override
	public String toString() {
		return "BanMemberList [banid=" + banid + ", mid=" + mid + ", mname=" + mname + "]";
	}

	
	
	
}
