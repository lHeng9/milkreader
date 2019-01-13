package com.sw.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sw.entity.Book;
import com.sw.entity.User;
import com.sw.service.BookService;
import com.sw.service.UserService;

public class BookAction extends ActionSupport implements ModelDriven{
	BookService bs = new BookService();
	Book book = new Book();
	List<Book> books = new ArrayList<Book>();
	int typeid = 0;
	String type = null;
	int id = 0;
	
	public String showoneBook() {
		return "showoneBookOK";
	}
	public String showone2Book() {
		book = bs.findById(book);
		System.out.println(book.getTypeid());
		books = bs.findByTypeId(book);
		return "showone2BookOK";
	}
	public String classifyBook() {
		return "classifyBookOK";
	}
	public String classify2Book() {
		books = bs.findByTypeId(book);
		Iterator it = books.iterator();
		Book book1 =  null;
		if(it.hasNext()) {
			book1 = (Book) it.next();
		}
		type = book1.getType();
		ActionContext.getContext().getSession().put("type", type);
		System.out.println(type);
		return "classify2BookOK";
	}
	
	public String showAllBook() {
		books = bs.findAll();
		return "showAllBookOK";
	}
	public String deleteBook() {
		bs.deleteBook(book);
		return "deleteBookOK";
	}
	public String updateBook() {
		book = bs.findById(book);
		return "updateBookOK";
	}
	
	public Book getModel() {
		return book;
	}

	public BookService getBs() {
		return bs;
	}

	public void setBs(BookService bs) {
		this.bs = bs;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public int getTypeid() {
		return typeid;
	}

	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
