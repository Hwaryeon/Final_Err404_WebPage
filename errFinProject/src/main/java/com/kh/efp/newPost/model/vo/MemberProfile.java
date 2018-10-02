package com.kh.efp.newPost.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class MemberProfile implements Serializable{

	private int mid;
	private String mname;
	private String edit_name;
	
	public MemberProfile(){}

	public MemberProfile(int mid, String mname, String edit_name) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.edit_name = edit_name;
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

	@Override
	public String toString() {
		return "MemberProfile [mid=" + mid + ", mname=" + mname + ", edit_name=" + edit_name + "]";
	}
	
	
	
}
