package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dao.bean.Student;
import com.dao.bean.Teacher;

public class StudentDao {
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
	
	public static int getLogin(Student s)
	{
		int status = 0;
		try {
			String student_email = s.getStudentEmail(); 
			String student_password = s.getStudentPassword();
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from student where student_email=? and student_password=?");
			pst.setString(1, student_email);
			pst.setString(2, student_password);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				status = -1;
			}
			else {
				status = 0;
			}
		} catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int EditStudentData(Student sd) {
		int status=0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update student set student_password=?, student_name=?, student_gender=?, student_nationality=?, studnet_eamil=?, student_phone=? where student_id=?");
			pst.setString(1, sd.getStudentPassword());
			pst.setString(2, sd.getStudentName());
			pst.setString(3, sd.getStudentGender());
			pst.setString(4, sd.getStudentNationality());
			pst.setString(5, sd. getStudentEmail());
			pst.setString(6, sd.getStudentPhone());
			pst.setString(7, sd.getStudentId());
			
			status = pst.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
