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
<table class="table">
	<tr>
		<th>SUBJECT</th>
		<th>QUESTION</th>
		<th>OPTION 1</th>
		<th>OPTION 2</th>
		<th>OPTION 3</th>
		<th>OPTION 4</th>
		<th>ANSWER</th>
		<th>EDIT</th>
		<th>DELETE</th>
	</tr>
	<%
		String sql="select * from questions";
		PreparedStatement pst=Provider.getConnection().prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			%>
				<tr class="success">
					<td><%=rs.getString(8) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(7) %></td>
					<td><a href="editQuestion.jsp?slno=<%= rs.getString(1) %>"><button class="btn btn-success">EDIT</button></a></td>
					<td><a href="deleteQuestion.jsp?slno=<%= rs.getString(1) %>"><button class="btn btn-danger">DELETE</button></a></td>
				</tr>
			<%
		}
	%>
</table>
</body>
</html>