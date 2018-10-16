package com.kh.efp.band.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Attfile implements  java.io.Serializable{
	
	private int fid;
	private int mid;
	private int boardId;
	private String forigin_name;
	private String edit_name;
	private String file_src;
	private Date fdate;
	private String flevel;
	
	public Attfile(){}

	public Attfile(int fid, int mid, int boardId, String forigin_name, String edit_name, String file_src, Date fdate,
			String flevel) {
		super();
		this.fid = fid;
		this.mid = mid;
		this.boardId = boardId;
		this.forigin_name = forigin_name;
		this.edit_name = edit_name;
		this.file_src = file_src;
		this.fdate = fdate;
		this.flevel = flevel;
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

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
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
		return "Attfile [fid=" + fid + ", mid=" + mid + ", boardId=" + boardId + ", forigin_name=" + forigin_name
				+ ", edit_name=" + edit_name + ", file_src=" + file_src + ", fdate=" + fdate + ", flevel=" + flevel
				+ "]";
	}
	
	
	

}
