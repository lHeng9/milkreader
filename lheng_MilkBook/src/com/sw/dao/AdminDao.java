package com.sw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sw.conn.Conn;
import com.sw.entity.Admin;
import com.sw.entity.User;

public class AdminDao implements BaseDao<User> {
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
		return null;
	}
	
	
	public List<Admin> selectUser(Admin user){
		ResultSet rs = null;
		String sql = "select * from admin where name=? and psw=?";
		rs = dbc.executeQuery(sql, user.getName(),user.getPsw());
		List<Admin> users = new ArrayList();
		try {
			while(rs.next()) {
				Admin user1 = new Admin();
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
	
}
