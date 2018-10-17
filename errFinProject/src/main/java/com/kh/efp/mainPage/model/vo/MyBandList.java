package com.kh.efp.mainPage.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class MyBandList implements java.io.Serializable{
	
	private int memberCount;
	private String bname;
	private int mid;
	private String edit_name;
	private int bid;
	private int char_count;
	private int length;
	
	public MyBandList(){}
	
	public MyBandList(int memberCount, String bname, int mid, String edit_name, int bid, int char_count, int length) {
		this.memberCount = memberCount;
		this.bname = bname;
		this.mid = mid;
		this.edit_name = edit_name;
		this.bid = bid;
		this.char_count = char_count;
		this.length = length;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
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

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}
	
	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}
 
	public int getChar_count() {
		return char_count;
	}

	public void setChar_count(int char_count) {
		this.char_count = char_count;
	}

	@Override
	public String toString() {
		return "MyBandList [memberCount=" + memberCount + ", bname=" + bname + ", mid=" + mid + ", edit_name="
				+ edit_name + ", bid=" + bid + ", char_count=" + char_count + "]";
	}

	
}
