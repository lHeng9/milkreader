package com.sw.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sw.entity.Admin;
import com.sw.entity.Book;
import com.sw.entity.BookCase;
import com.sw.entity.User;
import com.sw.service.AdminService;
import com.sw.service.BookCaseService;

public class BookCaseAction extends ActionSupport implements ModelDriven {
	BookCase bc = new BookCase();
	BookCaseService bcs = new BookCaseService();
	List<BookCase> bcss = new ArrayList<BookCase>();
	int userid = (int) ActionContext.getContext().getSession().get("userid");
	User user = new User();
	int bookid = 0;
	Book book = new Book();
	
	public String insertBookCase() {
		book.setId(bc.getBookid());
		user.setId(userid);
		System.out.println("Userid="+userid);
		System.out.println("Bookid="+bc.getBookid());
		bcs.insertBook(user, book);
		return "insertBookCaseOK";
	}
//	public String findBookCase() {
//		book.setId(bc.getBookid());
//		user.setId(userid);
//		bcss = bcs.findBookCase(user, book);
//		Iterator it = bcss.iterator();
//		if(it.hasNext()) {
//			ActionContext.getContext().getSession().put("flag",true);
//		}else {
//			ActionContext.getContext().getSession().put("flag",null);
//		}
//		return "findBookCaseOK";
//	}
	
	
	
	public BookCase getModel() {
		return bc;
	}

	public void setBc(BookCase bc) {
		this.bc = bc;
	}



	public BookCaseService getBcs() {
		return bcs;
	}



	public void setBcs(BookCaseService bcs) {
		this.bcs = bcs;
	}



	public List<BookCase> getBcss() {
		return bcss;
	}



	public void setBcss(List<BookCase> bcss) {
		this.bcss = bcss;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public int getUserid() {
		return userid;
	}



	public void setUserid(int userid) {
		this.userid = userid;
	}



	public int getBookid() {
		return bookid;
	}



	public void setBookid(int bookid) {
		this.bookid = bookid;
	}



	public Book getBook() {
		return book;
	}



	public void setBook(Book book) {
		this.book = book;
	}



	public BookCase getBc() {
		return bc;
	}



	
	

	
}
