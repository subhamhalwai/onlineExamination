package com.exam.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.db.UserDao;
import com.exam.model.User;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User u=new User();
		u.setEmail(request.getParameter("email"));
		u.setName(request.getParameter("name"));
		u.setGender(request.getParameter("gender"));
		u.setPassword(request.getParameter("password"));
		u.setMobile(request.getParameter("mobile"));
		u.setType("user");
		
		int status=UserDao.save(u);
		if(status>0){
			response.sendRedirect("registration.jsp?msg=Registered");
		}
		else{
			response.sendRedirect("registration.jsp?msg=Failed");
		}
	}

}
