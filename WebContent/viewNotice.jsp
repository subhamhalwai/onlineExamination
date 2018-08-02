<%@page import="java.sql.ResultSet"%>
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.PreparedStatement"%>
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
<table class="table">
	<tr>
		<th>DATE</th>
		<th>TITLE</th>
		<th>SUBJECT</th>
		</tr>
	<%
		String sql="select * from notice";
		PreparedStatement pst=Provider.getConnection().prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			%>
				<tr class="success">
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(2) %></td>
					<td><a href="editNotice.jsp?slno=<%= rs.getString(1) %>"><button class="btn btn-success">EDIT</button></a></td>
					<td><a href="deleteNotice.jsp?slno=<%= rs.getString(1) %>"><button class="btn btn-danger">DELETE</button></a></td>
				</tr>
			<%
		}
	%>
	</table>
</body>
</html>