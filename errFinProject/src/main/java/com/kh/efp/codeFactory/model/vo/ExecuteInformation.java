package com.kh.efp.codeFactory.model.vo;

public class ExecuteInformation implements java.io.Serializable{

	private String clientId;
	private String clientSecret;
	private String script;
	private String versionIndex;
	private String language;
	
	public ExecuteInformation() {}

	public ExecuteInformation(String clientId, String clientSecret, String script, String versionIndex, String language) {
		super();
		this.clientId = clientId;
		this.clientSecret = clientSecret;
		this.script = script;
		this.versionIndex = versionIndex;
		this.language = language;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getClientSecret() {
		return clientSecret;
	}

	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

	public String getVersionIndex() {
		return versionIndex;
	}

	public void setVersionIndex(String versionIndex) {
		this.versionIndex = versionIndex;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	@Override
	public String toString() {
		return "Code [clientId=" + clientId + ", clientSecret=" + clientSecret + ", script=" + script
				+ ", versionIndex=" + versionIndex + ", language=" + language + "]";
	}
	
	
	
}
