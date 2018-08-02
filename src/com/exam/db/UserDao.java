package com.exam.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.exam.model.User;

public class UserDao {

	public static int save(User u) {
		// TODO Auto-generated method stub
		int status=0;
		String sql="insert into user values(?,?,?,?,?,?)";
		try {
			Connection con=Provider.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, u.getEmail());
			pst.setString(2, u.getPassword());
			pst.setString(3, u.getName());
			pst.setString(4, u.getGender());
			pst.setString(5, u.getMobile());
			pst.setString(6, u.getType());
			status=pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}

	public static String validate(User st) {
		// TODO Auto-generated method stub
		String type="";
		String sql="select * from user where emailid=? and password=?";
		try {
			Connection con=Provider.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, st.getEmail());
			pst.setString(2, st.getPassword());
			ResultSet rs=pst.executeQuery();
			
			while(rs.next()){
				type=rs.getString(6);
			}
				} catch (Exception e) {
			// TODO: handle exception
					e.printStackTrace();
		}
		return type;
	}

}
