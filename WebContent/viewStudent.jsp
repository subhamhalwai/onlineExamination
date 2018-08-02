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
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">

</head>
<body>
<table class="table">
	<tr class="error">
		<td>NAME</td>
		<td>EMAIL</td>
		<td>GENDER</td>
		<td>MOBILE NO</td>
		<td>DELETE</td>
	</tr>
	<%
		String sql="select * from user where type='user'";
		Connection con=Provider.getConnection();
		PreparedStatement pst=con.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			%>
				<tr class="success">
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
					<td><a href="deleteStudent.jsp?email=<%= rs.getString(1) %>"><button class="btn btn-danger">DELETE</button></a></td>
				</tr>
			<%
		}
	%>
</table>
</body>
</html>