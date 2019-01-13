package com.sw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sw.conn.Conn;
import com.sw.entity.Book;
import com.sw.entity.User;

public class BookDao implements BaseDao<Book> {
	Conn dbc = new Conn();
	Connection conn = dbc.getConn();
	PreparedStatement pst = null;
	@Override
	public Book findById(Book book1) {
		// TODO Auto-generated method stub]
		ResultSet rs = null;
		String sql = "select * from book,booktype where book.typeid = booktype.id and book.id = ?";
		List<Book> books = new ArrayList<Book>();
		rs = dbc.executeQuery(sql,book1.getId());
		Book book =  new Book();
		try {
			if(rs.next()) {
				book.setId(rs.getInt("id"));
				book.setImgPath(rs.getString("img"));
				book.setName(rs.getString("name"));
				book.setAuthor(rs.getString("author"));
				book.setIntor(rs.getString("intor"));
				book.setType(rs.getString("type"));
				book.setTypeid(rs.getInt("typeid"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return book;
	}

	@Override
	public List<Book> findAll() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		List<Book> books = new ArrayList<Book>();
		String sql = "select * from book,booktype where book.typeid = booktype.id ";
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
	public List<Book> findByTypeId(Book book1) {
		String sql = "select * from book,booktype where book.typeid = booktype.id and typeid = ?";
		ResultSet rs = null;
		List<Book> books = new ArrayList<Book>();
		rs = dbc.executeQuery(sql,book1.getTypeid());
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
	
	public void insertBook(Book book) {
		int rs = 0;
		String sql = "insert into book(img,name,author,intor,typeid) values (?,?,?,?,?)";
		rs = dbc.executeUpdate(sql,book.getImgPath(),book.getName(),book.getAuthor(),book.getIntor(),book.getTypeid());
	}
	
	public List<User> selectUser(User user){
		ResultSet rs = null;
		String sql = "select * from user where name=? and psw=?";
		rs = dbc.executeQuery(sql, user.getName(),user.getPsw());
		List<User> users = new ArrayList();
		try {
			while(rs.next()) {
				User user1 = new User();
				user1.setName(rs.getString(1));
				user1.setPsw(rs.getString(2));
				users.add(user1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}
	public void updateBook(Book book) {
		String sql = "update book set name=?,author=?,img=?,intor=?,typeid=? where id=?";
		dbc.executeUpdate(sql,book.getName(),book.getAuthor(),book.getImgPath(),book.getIntor(),book.getTypeid());
	}
	public void deleteBook(Book book) {
		String sql ="delete from book where id=?";
		dbc.executeUpdate(sql,book.getId());
	}
	
}
