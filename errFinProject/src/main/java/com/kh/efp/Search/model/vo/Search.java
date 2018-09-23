package com.kh.efp.Search.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

// 차단당한 회원을 포함해 모든 검색조건을 가져온다
@Repository
public class Search implements java.io.Serializable{
	
	private int bid;
	private String bName;
	private String bOpen_Status;
	private String bIntro;
	private int mid;
	private String mName;
	private String cName;
	private int boardId;
	private String bContent;
	private Date bDate;
	private int pid;
	private String P_edit_Name;
	private String P_file_Src;
	private String fType;
	private int fid;
	private String A_edit_Name;
	private String A_file_Src;
	private String fLevel;
	
	public Search() {}

	public Search(int bid, String bName, String bOpen_Status, String bIntro, int mid, String mName, String cName,
			int boardId, String bContent, Date bDate, int pid, String p_edit_Name, String p_file_Src, String fType,
			int fid, String a_edit_Name, String a_file_Src, String fLevel) {
		super();
		this.bid = bid;
		this.bName = bName;
		this.bOpen_Status = bOpen_Status;
		this.bIntro = bIntro;
		this.mid = mid;
		this.mName = mName;
		this.cName = cName;
		this.boardId = boardId;
		this.bContent = bContent;
		this.bDate = bDate;
		this.pid = pid;
		P_edit_Name = p_edit_Name;
		P_file_Src = p_file_Src;
		this.fType = fType;
		this.fid = fid;
		A_edit_Name = a_edit_Name;
		A_file_Src = a_file_Src;
		this.fLevel = fLevel;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbOpen_Status() {
		return bOpen_Status;
	}

	public void setbOpen_Status(String bOpen_Status) {
		this.bOpen_Status = bOpen_Status;
	}

	public String getbIntro() {
		return bIntro;
	}

	public void setbIntro(String bIntro) {
		this.bIntro = bIntro;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getP_edit_Name() {
		return P_edit_Name;
	}

	public void setP_edit_Name(String p_edit_Name) {
		P_edit_Name = p_edit_Name;
	}

	public String getP_file_Src() {
		return P_file_Src;
	}

	public void setP_file_Src(String p_file_Src) {
		P_file_Src = p_file_Src;
	}

	public String getfType() {
		return fType;
	}

	public void setfType(String fType) {
		this.fType = fType;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getA_edit_Name() {
		return A_edit_Name;
	}

	public void setA_edit_Name(String a_edit_Name) {
		A_edit_Name = a_edit_Name;
	}

	public String getA_file_Src() {
		return A_file_Src;
	}

	public void setA_file_Src(String a_file_Src) {
		A_file_Src = a_file_Src;
	}

	public String getfLevel() {
		return fLevel;
	}

	public void setfLevel(String fLevel) {
		this.fLevel = fLevel;
	}

	@Override
	public String toString() {
		return "Search [bid=" + bid + ", bName=" + bName + ", bOpen_Status=" + bOpen_Status + ", bIntro=" + bIntro
				+ ", mid=" + mid + ", mName=" + mName + ", cName=" + cName + ", boardId=" + boardId + ", bContent="
				+ bContent + ", bDate=" + bDate + ", pid=" + pid + ", P_edit_Name=" + P_edit_Name + ", P_file_Src="
				+ P_file_Src + ", fType=" + fType + ", fid=" + fid + ", A_edit_Name=" + A_edit_Name + ", A_file_Src="
				+ A_file_Src + ", fLevel=" + fLevel + "]";
	}

	
	
}
