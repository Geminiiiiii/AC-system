package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dao.bean.Admin;

public class AdminDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_info_system","root","pwd");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static int getLogin(Admin u)
	{
		int status = 0;
		try {
			String admin_name = u.getAdminName();
			String admin_password = u.getAdminPassword();
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from administrator where admin_name=? and admin_password=?");
			pst.setString(1, admin_name);
			pst.setString(2, admin_password);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				status = -1;
			}
			else {
				status = 0;
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}