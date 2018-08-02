<%@page import="java.sql.ResultSet"%>
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
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<%
	String slno=request.getParameter("slno");
	String sql="select * from notice where slno=?";
	Connection con=Provider.getConnection();
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1, slno);
	ResultSet rs=pst.executeQuery();
	while(rs.next()){
		%>
<form action="doeditNotice.jsp" method="post">
<table align="center">
<tr>
<td> <h3 style="color: blue;"> EDIT NOTICE</h3></td>
</tr>
<tr>
	<td>
	 
	<input type="text" value="<%= rs.getString(1) %>" name="slno" readonly="readonly"> 
	</td>
</tr>


<tr>
<td> <input type="text" placeholder="title" name="title" value="<%= rs.getString(2) %>"></td>
</tr>

<tr>
<td> <input type="text" placeholder="subject" name="subject" value="<%= rs.getString(3) %>"></td>
</tr>
<tr>
<td> <input type="submit" value="save" class="btn btn-primary"></td>
</tr>
</table>
</form>
		<%
	}
%>

</body>
</html>