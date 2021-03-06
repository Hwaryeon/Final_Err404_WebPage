package com.kh.efp.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Member implements java.io.Serializable{
	private int mid;
	private String mEmail;
	private String mPwd;
	private String mToken;
	private String mType;
	private String mName;
	private String mPhone;
	private Date mDate;
	private String mStatus;
	private String mNational;

	public Member(){}

	public Member(int mid, String mEmail, String mPwd, String mToken, String mType, String mName, String mPhone,
			Date mDate, String mStatus, String mNational) {
		super();
		this.mid = mid;
		this.mEmail = mEmail;
		this.mPwd = mPwd;
		this.mToken = mToken;
		this.mType = mType;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mDate = mDate;
		this.mStatus = mStatus;
		this.mNational = mNational;
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

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getmToken() {
		return mToken;
	}

	public void setmToken(String mToken) {
		this.mToken = mToken;
	}

	public String getmType() {
		return mType;
	}

	public void setmType(String mType) {
		this.mType = mType;
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

	public Date getmDate() {
		return mDate;
	}

	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}

	public String getmStatus() {
		return mStatus;
	}

	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}

	public String getmNational() {
		return mNational;
	}

	public void setmNational(String mNational) {
		this.mNational = mNational;
	}

	@Override
	public String toString() {
		return "Member [mid=" + mid + ", mEmail=" + mEmail + ", mPwd=" + mPwd + ", mToken=" + mToken + ", mType="
				+ mType + ", mName=" + mName + ", mPhone=" + mPhone + ", mDate=" + mDate + ", mStatus=" + mStatus
				+ ", mNational=" + mNational + "]";
	}

	
	
	
	
}
