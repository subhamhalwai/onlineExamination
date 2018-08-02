package com.exam.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.db.Provider;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String emailid=request.getParameter("emailid");
		String mobile=request.getParameter("mobile");
		String message=request.getParameter("message");
		
		String sql="insert into contact value(?,?,?,?)";
		Connection con=Provider.getConnection();
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, emailid);
			pst.setString(3, mobile);
			pst.setString(4, message);
			
			int status=pst.executeUpdate();
			if(status > 0){
				response.sendRedirect("contact.jsp?msg=Thank you");
				
			}
			else{
				response.sendRedirect("contact.jsp?msg=failed");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
