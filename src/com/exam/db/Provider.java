package com.exam.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Provider {
	public static String driver="com.mysql.jdbc.Driver";
	
	public static String url="jdbc:mysql://localhost:3306/onlineexamination";
	public static String user="root";
	public static String password="System";
	public static Connection getConnection() {
		// TODO Auto-generated method stub
		Connection con=null;
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
}
