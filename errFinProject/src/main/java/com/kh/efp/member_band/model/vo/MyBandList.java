package com.kh.efp.member_band.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class MyBandList implements java.io.Serializable{
	
	private int memberCount;
	private String bname;
	private int mid;
	private String edit_name;
	private int bid;
	
	public MyBandList(){}
	
	public MyBandList(int memberCount, String bname, int mid, String edit_name, int bid) {
		this.memberCount = memberCount;
		this.bname = bname;
		this.mid = mid;
		this.edit_name = edit_name;
		this.bid = bid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public int getMemberCount() {
		return memberCount;
	}

	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}

	public String getbname() {
		return bname;
	}

	public void setbname(String bname) {
		this.bname = bname;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	@Override
	public String toString() {
		return "MyBandList [memberCount=" + memberCount + ", bname=" + bname + ", mid=" + mid + ", edit_name="
				+ edit_name + ", bid=" + bid + "]";
	}

	
	
	
	

}
