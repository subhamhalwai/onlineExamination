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
	String user=(String)session.getAttribute("user");
	String type=(String)session.getAttribute("type");
	String mark=(String)session.getAttribute("mark");
	String qry="insert into result(type,edate,mark,examby) values(?,now(),?,?)";
	Connection con=Provider.getConnection();
	PreparedStatement stmt=con.prepareStatement(qry);
	stmt.setString(1, type);
	stmt.setString(2, mark);
	stmt.setString(3, user);
	int status=stmt.executeUpdate();
	if(status>0)
	{
		out.print("<center><h1><font color='green'>SUCCESSFULLY SAVED</font></h1></center>");
	}
%>

</body>
</html>