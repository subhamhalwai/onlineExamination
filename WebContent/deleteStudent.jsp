<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String sql="delete from user where email=?";
	String email=request.getParameter("email");
	PreparedStatement pst=Provider.getConnection().prepareStatement(sql);
	pst.setString(1, email);
	pst.execute();
	response.sendRedirect("viewStudent.jsp");
%>
</body>
</html>