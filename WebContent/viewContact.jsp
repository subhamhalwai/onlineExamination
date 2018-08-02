<%@page import="java.sql.ResultSet"%>
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table" style="max-width=70%">
	<tr>
		<th>NAME</th>
		<th>EMAIL ID</th>
		<th>MOBILE</th>
		<th>MESSAGE</th>
	</tr>
	<%
		String sql="select * from contact";
		PreparedStatement pst=Provider.getConnection().prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			%>
				<tr class="error">
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><a href="deleteContact.jsp?emailid=<%= rs.getString(2) %>"><button class="btn btn-danger">DELETE</button></a></td>
				</tr>
			<%
		}
	%>
</table>
</body>
</html>