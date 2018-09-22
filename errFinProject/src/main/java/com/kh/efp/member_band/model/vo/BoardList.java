package com.kh.efp.member_band.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class BoardList implements java.io.Serializable{
	private int boardid;
	private int mid;
	private int bid;
	private String bName;
	private String bContent;
	private String bStatus;
	private Date bDate;
	
	public BoardList(){}

	public BoardList(int boardid, int mid, int bid, String bName, String bContent, String bStatus, Date bDate) {
		super();
		this.boardid = boardid;
		this.mid = mid;
		this.bid = bid;
		this.bName = bName;
		this.bContent = bContent;
		this.bStatus = bStatus;
		this.bDate = bDate;
	}

	public int getBoardid() {
		return boardid;
	}

	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getbStatus() {
		return bStatus;
	}

	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	@Override
	public String toString() {
		return "BoardList [boardid=" + boardid + ", mid=" + mid + ", bid=" + bid + ", bName=" + bName + ", bContent="
				+ bContent + ", bStatus=" + bStatus + ", bDate=" + bDate + "]";
	}
	
	
	
}
