package com.kh.efp.newPost.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class BandMemberCount implements Serializable{ 

	private int bid;
	private int mcount;
	
	public BandMemberCount(){}

	public BandMemberCount(int bid, int mcount) {
		super();
		this.bid = bid;
		this.mcount = mcount;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getMcount() {
		return mcount;
	}

	public void setMcount(int mcount) {
		this.mcount = mcount;
	}

	@Override
	public String toString() {
		return "BandMemberCount [bid=" + bid + ", mcount=" + mcount + "]";
	}
	
	
}
