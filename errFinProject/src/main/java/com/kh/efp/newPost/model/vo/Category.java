package com.kh.efp.newPost.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class Category implements Serializable{

	private int cid;
	private String cname;
	
	public Category(){}

	public Category(int cid, String cname) {
		super();
		this.cid = cid;
		this.cname = cname;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	@Override
	public String toString() {
		return "Category [cid=" + cid + ", cname=" + cname + "]";
	}
	
	

}
