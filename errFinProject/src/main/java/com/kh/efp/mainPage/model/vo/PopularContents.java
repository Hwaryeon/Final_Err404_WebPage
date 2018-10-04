package com.kh.efp.mainPage.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class PopularContents implements java.io.Serializable{
	private int no;
	private int replyCount;
	private int bid;
	private String bname;
	private int mid;
	private String mname;
	private String edit_name;
	private String flevel;
	private String bcontent;
	
	public PopularContents(){}

	public PopularContents(int no, int replyCount, int bid, String bname, int mid, String mname, String edit_name, String flevel, String bcontent) {
		super();
		this.no = no;
		this.replyCount = replyCount;
		this.bid = bid;
		this.bname = bname;
		this.mid = mid;
		this.mname = mname;
		this.edit_name = edit_name;
		this.flevel = flevel;
		this.bcontent = bcontent;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
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

	public String getEdit_name() {
		return edit_name;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public String getflevel() {
		return flevel;
	}

	public void setflevel(String flevel) {
		this.flevel = flevel;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	@Override
	public String toString() {
		return "\nPopularContents [no=" + no + ", replyCount=" + replyCount + ", bid=" + bid + ", bname=" + bname
				+ ", mid=" + mid + ", mname=" + mname + ", edit_name=" + edit_name + ", flevel=" + flevel
				+ ", bcontent=" + bcontent + "]";
	}

	
	
	
	
	
}
