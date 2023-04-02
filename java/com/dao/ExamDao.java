package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ExamDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_info_system","root","pwd");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
