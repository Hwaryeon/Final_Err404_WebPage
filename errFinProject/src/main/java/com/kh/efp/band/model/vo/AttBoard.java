package com.kh.efp.band.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class AttBoard extends Board implements Serializable {
	private String mName;
	private int fid;
	private int mid;
	private String forigin_name;
	private String edit_name;
	private String file_src;
	private Date fdate;
	private String flevel;
	
	public AttBoard(){}
	
	public AttBoard(int boardId, int bId, int mId, String bContent, Date bDate, String bStatus, String refStatus,
			int refBId,String mName, int fid, String forigin_name, String edit_name, String file_src, Date fdate,
			String flevel){
		super(boardId, bId, mId, bContent, bDate, bStatus, refStatus, refBId);
		this.mName = mName;
		this.fid = fid;
		this.forigin_name = forigin_name;
		this.edit_name = edit_name;
		this.file_src = file_src;
		this.fdate = fdate;
		this.flevel = flevel;
	}


	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getForigin_name() {
		return forigin_name;
	}

	public void setForigin_name(String forigin_name) {
		this.forigin_name = forigin_name;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public String getFile_src() {
		return file_src;
	}

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public Date getFdate() {
		return fdate;
	}

	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}

	public String getFlevel() {
		return flevel;
	}

	public void setFlevel(String flevel) {
		this.flevel = flevel;
	}

	@Override
	public String toString() {
		return "AttBoard [mName=" + mName + ", fid=" + fid + ", mid=" + mid + ", forigin_name=" + forigin_name
				+ ", edit_name=" + edit_name + ", file_src=" + file_src + ", fdate=" + fdate + ", flevel=" + flevel
				+ ", getBoardId()=" + getBoardId() + ", getbId()=" + getbId() + ", getmId()=" + getmId()
				+ ", getbContent()=" + getbContent() + ", getbDate()=" + getbDate() + ", getbStatus()=" + getbStatus()
				+ ", getRefStatus()=" + getRefStatus() + ", getRefBId()=" + getRefBId() + "]";
	}

	
	
}
