package com.sw.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import com.sw.entity.Afile;
import com.sw.entity.Book;
import com.sw.service.BookService;

public class BookUploadAction extends ActionSupport implements ModelDriven{
	private List<File> img;
	private List<String> imgFileName;
	private List<String> imgContentType;
	private String savePath;
	private String realPath;
	Afile f ;
	List<Afile> files;
	private String target;
	private String realname;
	Book book = new Book();
	BookService bs = new BookService();
	
	
	
	public String execute() throws IOException {
		//文件上传
		files = new ArrayList();
		target=ServletActionContext.getServletContext().getRealPath(savePath);
		
		for (int i = 0 ; i < img.size() ; i ++) {
			realname = UUID.randomUUID() + getImgFileName().get(i);
			realPath = target +"\\"+ realname;
			f = new Afile(realname,realPath,getImgContentType().get(i)); 
			FileInputStream fis = new FileInputStream(getImg().get(i));
			FileOutputStream fos = new FileOutputStream(f.getFilePath());
			byte[] bf = new byte[1024];
			int len = 0;
			while ((len = fis.read(bf)) >  0) {
				fos.write(bf , 0 , len);
			}
			files.add(f);
			book.setImgPath(realname);
			bs.insertBook(book);
			fos.close();
			ActionContext.getContext().getSession().put("files", files);
		}
		return "uploadOK";
	}
	
	@Override
	public Book getModel() {
		// TODO Auto-generated method stub
		return book;
	}


	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public List<File> getImg() {
		return img;
	}


	public void setImg(List<File> img) {
		this.img = img;
	}


	public List<String> getImgFileName() {
		return imgFileName;
	}


	public void setImgFileName(List<String> imgFileName) {
		this.imgFileName = imgFileName;
	}


	public List<String> getImgContentType() {
		return imgContentType;
	}


	public void setImgContentType(List<String> imgContentType) {
		this.imgContentType = imgContentType;
	}


	public String getSavePath() {
		return savePath;
	}


	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}


	public String getRealPath() {
		return realPath;
	}


	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}


	public Afile getF() {
		return f;
	}


	public void setF(Afile f) {
		this.f = f;
	}


	public List<Afile> getFiles() {
		return files;
	}


	public void setFiles(List<Afile> files) {
		this.files = files;
	}
	
	
	
}
