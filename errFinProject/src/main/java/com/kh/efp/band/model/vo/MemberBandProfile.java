package com.kh.efp.band.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class MemberBandProfile extends Member_Band{
	private String mType;
	private String fileSrc;
	private String editName;
	
	public MemberBandProfile(){}
	
	public MemberBandProfile(int mbid, int bid, int mid, Date idate, String istatus, String mlevel, String mname, String mType, String fileSrc, String editName){
		super(mbid, bid, mid, idate, istatus, mlevel, mname);
		this.mType = mType;
		this.fileSrc = fileSrc;
		this.editName = editName;
	}

	
	
	public String getmType() {
		return mType;
	}

	public void setmType(String mType) {
		this.mType = mType;
	}

	public String getFileSrc() {
		return fileSrc;
	}

	public void setFileSrc(String fileSrc) {
		this.fileSrc = fileSrc;
	}

	public String getEditName() {
		return editName;
	}

	public void setEditName(String editName) {
		this.editName = editName;
	}

	@Override
	public String toString() {
		return "MemberBandProfile [mType=" + mType + ", fileSrc=" + fileSrc + ", editName=" + editName + ", getMbid()="
				+ getMbid() + ", getBid()=" + getBid() + ", getMid()=" + getMid() + ", getIdate()=" + getIdate()
				+ ", getIstatus()=" + getIstatus() + ", getMlevel()=" + getMlevel() + ", getMname()=" + getMname()
				+ "]";
	}



	
}
