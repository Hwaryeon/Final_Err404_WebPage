package com.kh.efp.mainPage.model.vo;

public class RecommendContents implements java.io.Serializable {
	private String bname;
	private String cname;
	private String edit_name;
	private String bintro;
	
	public RecommendContents(){}

	public RecommendContents(String bname, String cname, String edit_name, String bintro) {
		this.bname = bname;
		this.cname = cname;
		this.edit_name = edit_name;
		this.bintro = bintro;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getCname(){
		return cname;
	}
	
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	public String getEdit_name() {
		return edit_name;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public String getBintro() {
		return bintro;
	}

	public void setBintro(String bintro) {
		this.bintro = bintro;
	}

	@Override
	public String toString() {
		return "RecommendContents [bname=" + bname + ", cname=" + cname + ", edit_name=" + edit_name + ", bintro=" + bintro + "]";
	}
	
	
	
	
}
