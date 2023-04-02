package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.dao.bean.Teacher;

public class TeacherDao {
	public static Connection getConnection()
	{
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_info_system","root","pwd");
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static int getLogin(Teacher t)
	{
		int status=0;
		try {
			String teacher_email = t.getTeacherEmail(); 
			String teacher_password = t.getTeacherPassword();
			
			Connection con=getConnection();
			PreparedStatement pst = con.prepareStatement("select * from teacher where teacher_email=? and teacher_password=?");
			pst.setString(1, teacher_email);
			pst.setString(2, teacher_password);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				status = -1;
			}
			else {
				status = 0;
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int EditTeacherData(Teacher td) {
		int status=0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update teacher set teacher_password=?, teacher_name=?, teacher_gender=?, teacher_info=?, teacher_eamil=? where teacher_id=?");
			pst.setString(1, td.getTeacherPassword());
			pst.setString(2, td.getTeacherName());
			pst.setString(3, td.getTeacherGender());
			pst.setString(4, td.getTeacherInfo());
			pst.setString(5, td. getTeacherEmail());
			pst.setInt(6, td.getTeacherId());
			
			status = pst.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
