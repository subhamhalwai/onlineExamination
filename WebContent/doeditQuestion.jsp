<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD H
TML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String slno=request.getParameter("slno");
	String sql="update questions set op1=? , op2=? , op3=? , op4=? , answer=? where slno=?";
	Connection con=Provider.getConnection();
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1, request.getParameter("op1"));
	pst.setString(2, request.getParameter("op2"));
	pst.setString(3, request.getParameter("op3"));
	pst.setString(4, request.getParameter("op4"));
	pst.setString(5, request.getParameter("ans"));
	pst.setString(6, request.getParameter("slno"));
	
	pst.execute();
	response.sendRedirect("viewQuestion.jsp");
%>
</body>
</html>
