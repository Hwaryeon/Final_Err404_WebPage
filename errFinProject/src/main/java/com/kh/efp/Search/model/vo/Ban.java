package com.kh.efp.Search.model.vo;

public class Ban implements java.io.Serializable{

	private int banId;
	private int bid;
	private int mid;
	private String banReason;
	public Ban() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ban(int badId, int bid, int mid, String reason) {
		super();
		this.banId = badId;
		this.bid = bid;
		this.mid = mid;
		this.banReason = reason;
	}
	public int getBadId() {
		return banId;
	}
	public void setBadId(int badId) {
		this.banId = badId;
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
	public String getReason() {
		return banReason;
	}
	public void setReason(String reason) {
		this.banReason = reason;
	}
	@Override
	public String toString() {
		return "Ban [badId=" + banId + ", bid=" + bid + ", mid=" + mid + ", reason=" + banReason + "]";
	}
	
	
	
}
