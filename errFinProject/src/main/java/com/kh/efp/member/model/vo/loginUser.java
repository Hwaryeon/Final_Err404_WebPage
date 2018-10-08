package com.kh.efp.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class loginUser extends Member implements java.io.Serializable{
	private String editName;
	private String fileSrc;

	public loginUser(){}

	public loginUser(int mid, String mEmail, String mPwd, String mToken, String mType, String mName, String mPhone,
			Date mDate, String mStatus, String mNational, String editName, String fileSrc) {
		super(mid, mEmail, mPwd, mToken, mType, mName, mPhone, mDate, mStatus, mNational);
		this.editName = editName;
		this.fileSrc = fileSrc;
	}

	public String getEditName() {
		return editName;
	}

	public void setEditName(String editName) {
		this.editName = editName;
	}

	public String getFileSrc() {
		return fileSrc;
	}

	public void setFileSrc(String fileSrc) {
		this.fileSrc = fileSrc;
	}

	@Override
	public String toString() {
		return "loginUser [editName=" + editName + ", fileSrc=" + fileSrc + "]";
	}

	
	
}
