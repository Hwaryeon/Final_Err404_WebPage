package com.kh.efp.member_band.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class MyBandList implements java.io.Serializable{
	
	private int memberCount;
	private String bname;
	private int mid;
	
	public MyBandList(){}
	
	public MyBandList(int memberCount, String bname, int mid) {
		this.memberCount = memberCount;
		this.bname = bname;
		this.mid = mid;
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
		return "MyBandList [memberCount=" + memberCount + ", bname=" + bname + ", mid=" + mid + "]";
	}
	
	
	
	

}
