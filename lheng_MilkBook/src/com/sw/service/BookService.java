package com.sw.service;

import java.util.List;

import com.sw.dao.BookDao;
import com.sw.dao.UserDao;
import com.sw.entity.Book;
import com.sw.entity.User;

public class BookService implements BaseService<Book> {
	BookDao dao = new BookDao();
	@Override
	public Book findById(Book book) {
		// TODO Auto-generated method stub
		return dao.findById(book);
	}

	@Override
	public List<Book> findAll() {
		// TODO Auto-generated method stub
		return (List<Book>) dao.findAll();
	}
	
	//ÃÌº” ÈºÆ
	public void insertBook(Book book) {
		dao.insertBook(book);
	}
	public List<User> selectUser(User user){
		return dao.selectUser(user);
	}
	
	public List<Book> findByTypeId(Book book1){
		return dao.findByTypeId(book1);
	}
	public void deleteBook(Book book) {
		dao.deleteBook(book);
	}
	public void updateBook(Book book) {
		dao.updateBook(book);
	}

	
}
