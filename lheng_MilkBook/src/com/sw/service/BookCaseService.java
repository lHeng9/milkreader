package com.sw.service;

import java.util.List;

import com.sw.dao.BookCaseDao;
import com.sw.dao.BookDao;
import com.sw.dao.UserDao;
import com.sw.entity.Book;
import com.sw.entity.BookCase;
import com.sw.entity.User;

public class BookCaseService implements BaseService<BookCase> {
	BookCaseDao dao = new BookCaseDao();
	@Override
	public BookCase findById(BookCase book) {
		// TODO Auto-generated method stub
		return dao.findById(book);
	}

	@Override
	public List<BookCase> findAll() {
		// TODO Auto-generated method stub
		return (List<BookCase>) dao.findAll();
	}
	
	//ÃÌº” ÈºÆ
	public void insertBook(User user,Book book) {
		dao.insertBookCase(user , book);
	}
	public List<BookCase> findBookCase(User user , Book book){
		return dao.findBookCase(user, book);
	}

	
}
