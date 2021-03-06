package com.kh.efp.admin.model.vo;

public class AdmBandList implements java.io.Serializable{
	private int bid; //bandId
	private String bname; //Band Name
	private String cname; //Category Name
	private String bopen_status; //バンド公開可否
	private String mname; //Band Master Name
	
	public AdmBandList(){} 
	
	public AdmBandList(int bid, String bname, String cname, String bopen_status, String mname) {
		this.bid = bid;
		this.bname = bname;
		this.cname = cname;
		this.bopen_status = bopen_status;
		this.mname = mname;
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

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getBopen_status() {
		return bopen_status;
	}

	public void setBopen_status(String bopen_status) {
		this.bopen_status = bopen_status;
	}

	public String getMname() {
		return mname;
	}
	
	public void setMname(String mname) {
		this.mname = mname;
	}
	
	@Override
	public String toString() {
		return "AdmBandList [bid=" + bid + ", bname=" + bname + ", cname=" + cname + ", bopen_status=" + bopen_status +
				", mname=" + mname + "]";
	}
	
	
}
