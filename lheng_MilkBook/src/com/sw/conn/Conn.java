package com.sw.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Conn {
	public static String DBDRIVER = "com.mysql.jdbc.Driver";
	public static String DBURL = "jdbc:mysql://localhost:3306/milkbook";
	public static String DBUSER = "root";
	public static String DBPSW = "123456";
	
	PreparedStatement pst = null;
	static Connection conn = null;
	
	
	public static Connection getConn() {
		try {
			Class.forName(DBDRIVER);
			conn = DriverManager.getConnection(DBURL, DBUSER, DBPSW);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	

	public int executeUpdate(String sql , Object...obj ) {
		int rs = 0;
		try {
			pst = conn.prepareStatement(sql);
			for(int i = 0 ; i < obj.length ; i++) {
				pst.setObject(i+1,obj[i]);
			}
			rs = pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet executeQuery (String sql , Object...obj) {
		ResultSet rs = null;
		try {
			pst = conn.prepareStatement(sql);
			for(int i = 0 ; i < obj.length ; i++) {
				pst.setObject(i+1, obj[i]);
			}
			rs = pst.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
}
