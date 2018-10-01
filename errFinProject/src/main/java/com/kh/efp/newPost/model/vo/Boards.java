package com.kh.efp.newPost.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Boards implements Serializable{

	private int boardid;
	private int bid;
	private int mid;
	private String bcontent;
	private Date bdate;
	private String bstatus;
	private String ref_status;
	private int ref_bid;
	
	public Boards(){}

	public Boards(int boardid, int bid, int mid, String bcontent, Date bdate, String bstatus, String ref_status,
			int ref_bid) {
		super();
		this.boardid = boardid;
		this.bid = bid;
		this.mid = mid;
		this.bcontent = bcontent;
		this.bdate = bdate;
		this.bstatus = bstatus;
		this.ref_status = ref_status;
		this.ref_bid = ref_bid;
	}

	public int getBoardid() {
		return boardid;
	}

	public void setBoardid(int boardid) {
		this.boardid = boardid;
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

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public String getBstatus() {
		return bstatus;
	}

	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}

	public String getRef_status() {
		return ref_status;
	}

	public void setRef_status(String ref_status) {
		this.ref_status = ref_status;
	}

	public int getRef_bid() {
		return ref_bid;
	}

	public void setRef_bid(int ref_bid) {
		this.ref_bid = ref_bid;
	}

	@Override
	public String toString() {
		return "Boards [boardid=" + boardid + ", bid=" + bid + ", mid=" + mid + ", bcontent=" + bcontent + ", bdate="
				+ bdate + ", bstatus=" + bstatus + ", ref_status=" + ref_status + ", ref_bid=" + ref_bid + "]";
	}
	
	
}
