package com.kh.efp.newPost.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class BandProfile implements Serializable {
	private int bid;
	private String edit_name;
	
	public BandProfile(){}

	public BandProfile(int bid, String edit_name) {
		super();
		this.bid = bid;
		this.edit_name = edit_name;
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

	@Override
	public String toString() {
		return "BandProfile [bid=" + bid + ", edit_name=" + edit_name + "]";
	}
	
	
	
}
