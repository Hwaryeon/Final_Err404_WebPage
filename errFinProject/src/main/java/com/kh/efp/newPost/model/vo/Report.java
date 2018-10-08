package com.kh.efp.newPost.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Report implements Serializable {

	private int rid;
	private String rcontent;
	private int mid;
	private Date rdate;
	private String rlevel;
	private int bid;
	private int boardid;
	private int cid;

	public Report(){}

	public Report(int rid, String rcontent, int mid, Date rdate, String rlevel, int bid, int boardid, int cid) {
		super();
		this.rid = rid;
		this.rcontent = rcontent;
		this.mid = mid;
		this.rdate = rdate;
		this.rlevel = rlevel;
		this.bid = bid;
		this.boardid = boardid;
		this.cid = cid;
	}

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public String getRlevel() {
		return rlevel;
	}

	public void setRlevel(String rlevel) {
		this.rlevel = rlevel;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getBoardid() {
		return boardid;
	}

	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "Report [rid=" + rid + ", rcontent=" + rcontent + ", mid=" + mid + ", rdate=" + rdate + ", rlevel="
				+ rlevel + ", bid=" + bid + ", boardid=" + boardid + ", cid=" + cid + "]";
	}
	
	
	
	
}
