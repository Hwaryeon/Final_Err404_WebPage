package com.kh.efp.band.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Board implements java.io.Serializable{
	
	
	private int boardId;
	private int bId;
	private int mId;
	private String bContent;
	private Date bDate;
	private String bStatus;
	private String refStatus;
	private int refBId;
	
	
	public Board(){}


	
	public Board(int boardId, int bId, int mId, String bContent, Date bDate, String bStatus, String refStatus,
			int refBId) {
		super();
		this.boardId = boardId;
		this.bId = bId;
		this.mId = mId;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bStatus = bStatus;
		this.refStatus = refStatus;
		this.refBId = refBId;
	}



	public int getBoardId() {
		return boardId;
	}


	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}


	public int getbId() {
		return bId;
	}


	public void setbId(int bId) {
		this.bId = bId;
	}


	public int getmId() {
		return mId;
	}


	public void setmId(int mId) {
		this.mId = mId;
	}


	public String getbContent() {
		return bContent;
	}


	public void setbContent(String bContent) {
		this.bContent = bContent;
	}


	public Date getbDate() {
		return bDate;
	}


	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}


	public String getbStatus() {
		return bStatus;
	}


	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}


	public String getRefStatus() {
		return refStatus;
	}


	public void setRefStatus(String refStatus) {
		this.refStatus = refStatus;
	}


	public int getRefBId() {
		return refBId;
	}


	public void setRefBId(int refBId) {
		this.refBId = refBId;
	}



	@Override
	public String toString() {
		return "Board [boardId=" + boardId + ", bId=" + bId + ", mId=" + mId + ", bContent=" + bContent + ", bDate="
				+ bDate + ", bStatus=" + bStatus + ", refStatus=" + refStatus + ", refBId=" + refBId + "]";
	}

	

}