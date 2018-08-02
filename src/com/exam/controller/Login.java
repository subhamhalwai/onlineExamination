package com.exam.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.db.UserDao;
import com.exam.model.User;
import com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		HttpSession ses=request.getSession();
		User st=new User();
		st.setEmail(request.getParameter("email"));
		st.setPassword(request.getParameter("password"));
		
		String type=UserDao.validate(st);
		if(type.equals("admin")){
			ses.setAttribute("admin",  st.getEmail());
			response.sendRedirect("admin.jsp");
			
			
		}
		else if(type.equals("user")){
			ses.setAttribute("user",  st.getEmail());
			response.sendRedirect("user.jsp");
			
			
		}
		else{
			response.sendRedirect("login.jsp?msg=Login Fails");
		}
	}

}
