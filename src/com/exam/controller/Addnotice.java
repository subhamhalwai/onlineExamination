package com.exam.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.db.Provider;

/**
 * Servlet implementation class Addnotice
 */
@WebServlet("/Addnotice")
public class Addnotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addnotice() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql="insert into notice(title,subject,date) values(?,?,now())";
		Connection con=Provider.getConnection();
	try {
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, request.getParameter("title"));
		pst.setString(2, request.getParameter("subject"));
		
		int status=	pst.executeUpdate();
		
		if(status > 0){
			response.sendRedirect("addNotice.jsp?msg=success");
			
		}
		else{
			response.sendRedirect("addNotice.jsp?msg=fails");
		}
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
	}
}


