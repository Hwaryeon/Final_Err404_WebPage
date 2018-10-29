package com.kh.efp.admin.model.vo;

public class BanReason {
	private int cid; //申告されたメンバー
	private int bid; //申告されたバンド
	private String banReason; //遮断された理由
	
	public BanReason(){}

	public BanReason(int cid, int bid, String banReason) {
		this.cid = cid;
		this.bid = bid;
		this.banReason = banReason;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getBanReason() {
		return banReason;
	}

	public void setBanReason(String banReason) {
		this.banReason = banReason;
	}

	@Override
	public String toString() {
		return "BanReason [cid=" + cid + ", bid=" + bid + ", banReason=" + banReason + "]";
	}
}
