package com.exam.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.db.questionDao;
import com.exam.model.Question;

/**
 * Servlet implementation class Addquestion
 */
@WebServlet("/Addquestion")
public class Addquestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addquestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/** 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Question q=new Question();
		q.setQuestion(request.getParameter("question"));
		q.setOp1(request.getParameter("op1"));
		q.setOp2(request.getParameter("op2"));
		q.setOp3(request.getParameter("op3"));
		q.setOp4(request.getParameter("op4"));
		q.setAnswer(request.getParameter("ans"));
		q.setCategories(request.getParameter("categories"));
		int status=questionDao.save(q);
		//System.out.println(status);
		if (status>0){
			response.sendRedirect("addQuestion.jsp?msg=Added");
			
		}
		else{
			response.sendRedirect("addQuestion.jsp?msg=Failed");
			
		}
		
	}

}
