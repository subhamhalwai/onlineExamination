package com.exam.db;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.exam.model.Question;

public class questionDao {

	public static int save(Question q) {
		// TODO Auto-generated method stub
		
		int status=0;
		String sql="insert into questions(question,op1,op2,op3,op4,answer,category) values(?,?,?,?,?,?,?)";
		try {
			Connection con=Provider.getConnection();
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, q.getQuestion());
			pst.setString(2, q.getOp1());
			pst.setString(3, q.getOp2());
			pst.setString(4, q.getOp3());
			pst.setString(5, q.getOp4());
			pst.setString(6, q.getAnswer());
			pst.setString(7, q.getCategories());
			status=pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}

}
	