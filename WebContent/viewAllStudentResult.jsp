
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<table class="table" style="max-width: 70%;">
	<tr>
		<th>SUBJECT</th>
		<th>DATE</th>
	    <th>MARK</th>
		<th>EXAM BY</th>
	</tr>
	<%
		String sql="select * from result";
		PreparedStatement pst=Provider.getConnection().prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			%>
				<tr class="error">
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
				</tr>
			<%
		}
	%>
</table>
</body>
</html>