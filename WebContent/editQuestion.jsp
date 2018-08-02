<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.Connection"%>
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
<%
	String slno=request.getParameter("slno");
	String sql="select * from questions where slno=?";
	Connection con=Provider.getConnection();
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1, slno);
	ResultSet rs=pst.executeQuery();
	while(rs.next()){
		%>
<form action="doeditQuestion.jsp" method="post">
<table align="center">
<tr>
<td> <h3 style="color: blue;"> EDIT QUESTION</h3></td>
</tr>
<tr>
	<td>
	<input type="hidden" value="<%= slno %>" name="slno"> 
	<input type="text" value="<%= rs.getString(8) %>" name="subject" readonly="readonly"> 
	</td>
</tr>

<tr> <td> 
<input type="text"  placeholder="question" name="question" readonly="readonly" value="<%= rs.getString(2)  %>">
</td></tr>
<tr>
<td> <input type="text" placeholder="op1" name="op1" value="<%= rs.getString(3) %>"></td>
</tr>
<tr>
<td> <input type="text" placeholder="op2" name="op2" value="<%= rs.getString(4) %>"></td>
</tr>

<tr>
<td> <input type="text" placeholder="op3" name="op3" value="<%= rs.getString(5) %>"></td>
</tr>

<tr>
<td> <input type="text" placeholder="op4" name="op4" value="<%= rs.getString(6) %>"></td>
</tr>

<tr> 
<td> 
	<select name="ans">
	<option> =ans=</option>
	<option>op1</option>
	<option>op2</option>
	<option>op3</option>
	<option>op4</option>
	</select>
</td>
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