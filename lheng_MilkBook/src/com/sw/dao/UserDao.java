package com.sw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sw.conn.Conn;
import com.sw.entity.User;

public class UserDao implements BaseDao<User> {
	Conn dbc = new Conn();
	Connection conn = dbc.getConn();
	PreparedStatement pst = null;
	@Override
	public User findById(User user) {
		// TODO Auto-generated method stub]
		return null;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		List<User> users = new ArrayList<User>();
		String sql = "select * from user";
		rs = dbc.executeQuery(sql);
		try {
			while(rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setImg(rs.getString("img"));
				user.setName(rs.getString("name"));
				user.setPsw(rs.getString("psw"));
				users.add(user);
			}
			return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void insertUser(User user) {
		int rs = 0;
		String sql = "insert into user(name,psw) values (?,?)";
		rs = dbc.executeUpdate(sql,user.getName(),user.getPsw());
	}
	
	public List<User> selectUser(User user){
		ResultSet rs = null;
		String sql = "select * from user where name=? and psw=?";
		rs = dbc.executeQuery(sql, user.getName(),user.getPsw());
		List<User> users = new ArrayList();
		try {
			while(rs.next()) {
				User user1 = new User();
				user1.setId(rs.getInt("id"));
				user1.setName(rs.getString("name"));
				user1.setPsw(rs.getString("psw"));
				users.add(user1);
				System.out.println(user1.getId()+"x"+user.getName()+"x"+user.getPsw());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}
	
	
}
