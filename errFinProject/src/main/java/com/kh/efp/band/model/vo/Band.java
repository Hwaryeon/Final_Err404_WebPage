package com.kh.efp.band.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class Band implements Serializable{

	private int bid;
	private String bname;
	private String bopen_status;
	private String bintro;
	private int cid;
	private String binvite_code;
	private String bstatus;
	
	public Band(){}

	public Band(int bid, String bname, String bopen_status, String bintro, int cid, String binvite_code,
			String bstatus) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.bopen_status = bopen_status;
		this.bintro = bintro;
		this.cid = cid;
		this.binvite_code = binvite_code;
		this.bstatus = bstatus;
	}
	
	/*public Band(int bid, String bname, String bopen_status){
		this.bid = bid;
		this.bname = bname;
		this.bopen_status = bopen_status;
	}*/

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

	public String getBopen_status() {
		return bopen_status;
	}

	public void setBopen_status(String bopen_status) {
		this.bopen_status = bopen_status;
	}

	public String getBintro() {
		return bintro;
	}

	public void setBintro(String bintro) {
		this.bintro = bintro;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getBinvite_code() {
		return binvite_code;
	}

	public void setBinvite_code(String binvite_code) {
		this.binvite_code = binvite_code;
	}

	public String getBstatus() {
		return bstatus;
	}

	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}

	@Override
	public String toString() {
		return "Band [bid=" + bid + ", bname=" + bname + ", bopen_status=" + bopen_status + ", bintro=" + bintro
				+ ", cid=" + cid + ", binvite_code=" + binvite_code + ", bstatus=" + bstatus + "]";
	}
	
	
	
}
