package com.kh.efp.admin.model.vo;

import java.sql.Date;

public class ReportList implements java.io.Serializable{
	private int cid; //신고당한회원번호
	private String memail; //신고당한회원이메일 
	private String mcname; //신고당한회원이름
	private String mname; //신고자이름
	private int bid; //신고된 밴드번호 
	private String bname; //신고당한밴드이름
	private Date rdate; //신고된날짜
	private String bopen_status; //신고된 밴드 유형
	private String mbname; //신고된 밴드 밴드장 이름
	private int times; //신고당한횟수
	private String rcontent; //신고사유
	private String bcontent; //신고당한 게시글
	private int boardid; //신고당한 게시글 아이디
	
	public ReportList(){}
	
	public ReportList(int cid, String memail, String mcname, String mname, int bid, String bname, Date rdate,
			String bopen_status, String mbname, int times, String rcontent, String bcontent, int boardid) {
		this.cid = cid;
		this.memail = memail;
		this.mcname = mcname;
		this.mname = mname;
		this.bid = bid;
		this.bname = bname;
		this.rdate = rdate;
		this.bopen_status = bopen_status;
		this.mbname = mbname;
		this.times = times;
		this.rcontent = rcontent;
		this.bcontent = bcontent;
		this.boardid = boardid;
	}
	
	public int getBoardid() {
		return boardid;
	}

	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	public String getBopen_status() {
		return bopen_status;
	}

	public void setBopen_status(String bopen_status) {
		this.bopen_status = bopen_status;
	}

	public String getMbname() {
		return mbname;
	}

	public void setMbname(String mbname) {
		this.mbname = mbname;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMcname() {
		return mcname;
	}

	public void setMcname(String mcname) {
		this.mcname = mcname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	@Override
	public String toString() {
		return "ReportList [cid=" + cid + ", memail=" + memail + ", mcname=" + mcname + ", mname=" + mname + ", bid="
				+ bid + ", bname=" + bname + ", rdate=" + rdate + ", bopen_status=" + bopen_status + ", mbname="
				+ mbname + ", times=" + times + ", rcontent=" + rcontent + ", bcontent=" + bcontent + ", boardid="
				+ boardid + "]";
	}

	
}
