<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.Connection"%>
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
	String sql="delete from notice where slno=?";
	String slno=request.getParameter("slno");
	Connection con=Provider.getConnection();
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1, slno);
	pst.execute();
	response.sendRedirect("viewNotice.jsp");
%>
</body>
</html>