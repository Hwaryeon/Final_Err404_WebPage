package com.kh.efp.codeFactory.model.vo;

public class ExecuteResult implements java.io.Serializable{

	private String output;
	private String statusCode;
	private String memory;
	private String cpuTime;
	
	public ExecuteResult() {}

	public ExecuteResult(String output, String statusCode, String memory, String cpuTime) {
		this.output = output;
		this.statusCode = statusCode;
		this.memory = memory;
		this.cpuTime = cpuTime;
	}

	public String getOutput() {
		return output;
	}

	public void setOutput(String output) {
		this.output = output;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}

	public String getMemory() {
		return memory;
	}

	public void setMemory(String memory) {
		this.memory = memory;
	}

	public String getCpuTime() {
		return cpuTime;
	}

	public void setCpuTime(String cpuTime) {
		this.cpuTime = cpuTime;
	}

	@Override
	public String toString() {
		return "ExecuteResult [output=" + output + ", statusCode=" + statusCode + ", memory=" + memory + ", cpuTime="
				+ cpuTime + "]";
	}
	
	
	
}
