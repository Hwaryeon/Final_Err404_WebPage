package com.kh.efp.admin.model.vo;

import java.sql.Date;

public class AdmMemberList {
	private int no;
	private int mid;
	private String mEmail;
	private String mName;
	private String mPhone;
	private String mNational;
	private Date mDate;
    private String mType;
    
    public AdmMemberList(){}

	public AdmMemberList(int no, int mid, String mEmail, String mName, String mPhone, String mNational, Date mDate,
			String mType) {
		this.no = no;
		this.mid = mid;
		this.mEmail = mEmail;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mNational = mNational;
		this.mDate = mDate;
		this.mType = mType;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmPhone() {
		return mPhone;
	}

	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	public String getmNational() {
		return mNational;
	}

	public void setmNational(String mNational) {
		this.mNational = mNational;
	}

	public Date getmDate() {
		return mDate;
	}

	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}

	public String getmType() {
		return mType;
	}

	public void setmType(String mType) {
		this.mType = mType;
	}

	@Override
	public String toString() {
		return "AdmMemberList [no=" + no + ", mid=" + mid + ", mEmail=" + mEmail + ", mName=" + mName + ", mPhone="
				+ mPhone + ", mNational=" + mNational + ", mDate=" + mDate + ", mType=" + mType + "]";
	}
}
