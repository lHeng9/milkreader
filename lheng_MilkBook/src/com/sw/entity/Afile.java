package com.sw.entity;

public class Afile {
	private String fileName;
	private String filePath;
	private String contentType;
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	
	public Afile(String fileName, String filePath, String contentType) {
		super();
		this.fileName = fileName;
		this.filePath = filePath;
		this.contentType = contentType;
	}
	public Afile() {
		
	}
}
