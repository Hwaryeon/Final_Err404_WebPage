package com.kh.efp.category.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class CategoryBandList implements java.io.Serializable{
	
	private int bid;
	private String bName;
	private String bopen_Status;
	private String bIntro;
	private int cid;
	private String cName;
	private int countMember;
	private String p_editName;
	
	public CategoryBandList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CategoryBandList(int bid, String bName, String bopen_Status, String bIntro, int cid, String cName,
			int countMember, String p_editName) {
		super();
		this.bid = bid;
		this.bName = bName;
		this.bopen_Status = bopen_Status;
		this.bIntro = bIntro;
		this.cid = cid;
		this.cName = cName;
		this.countMember = countMember;
		this.p_editName = p_editName;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	@Override
	public String toString() {
		return "CategoryBandList [bid=" + bid + ", bName=" + bName + ", bopen_Status=" + bopen_Status + ", bIntro="
				+ bIntro + ", cid=" + cid + ", cName=" + cName + ", countMember=" + countMember + ", p_editName="
				+ p_editName + "]";
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getBopen_Status() {
		return bopen_Status;
	}

	public void setBopen_Status(String bopen_Status) {
		this.bopen_Status = bopen_Status;
	}

	public String getbIntro() {
		return bIntro;
	}

	public void setbIntro(String bIntro) {
		this.bIntro = bIntro;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public int getCountMember() {
		return countMember;
	}

	public void setCountMember(int countMember) {
		this.countMember = countMember;
	}

	public String getP_editName() {
		return p_editName;
	}

	public void setP_editName(String p_editName) {
		this.p_editName = p_editName;
	}
	
}
