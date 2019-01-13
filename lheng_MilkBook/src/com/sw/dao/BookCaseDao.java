package com.sw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sw.conn.Conn;
import com.sw.entity.Book;
import com.sw.entity.BookCase;
import com.sw.entity.User;

public class BookCaseDao implements BaseDao<BookCase> {
	Conn dbc = new Conn();
	Connection conn = dbc.getConn();
	PreparedStatement pst = null;
	@Override
	public BookCase findById(BookCase t) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<BookCase> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	public List<Book> selectUserBook(User user){
		ResultSet rs = null;
		List<Book> books = new ArrayList<Book>();
		String sql = "select * from book,booktype,user,bookcase where book.typeid = booktype.id and user.id = ? ";
		rs = dbc.executeQuery(sql);
		try {
			while(rs.next()) {
				Book book = new Book();
				book.setId(rs.getInt("id"));
				book.setImgPath(rs.getString("img"));
				book.setName(rs.getString("name"));
				book.setAuthor(rs.getString("author"));
				book.setIntor(rs.getString("intor"));
				book.setType(rs.getString("type"));
				books.add(book);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return books;
	}
	public void insertBookCase(User user,Book book) {
		int rs = 0;
		String sql = "insert into bookcase(userid,bookid) values (?,?)";
		rs = dbc.executeUpdate(sql,user.getId(),book.getId());
	}
	//查找该用户是否有这本书
	public List<BookCase> findBookCase(User user , Book book){
		ResultSet rs = null;
		List<BookCase> books = new ArrayList<BookCase>();
		String sql = "select * from bookcase where userid = ? and bookid = ?";
		rs = dbc.executeQuery(sql,user.getId(),book.getId());
		try {
			while(rs.next()) {
				BookCase bc = new BookCase();
				bc.setId(rs.getInt("id"));
				bc.setBookid(rs.getInt("bookid"));
				bc.setUserid(rs.getInt("userid"));
				books.add(bc);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return books;
	}
	
}
