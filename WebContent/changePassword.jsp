<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
</head>
<body>
<form action="userchangepassword.jsp" method="post">
<table align="center">
	<tr>
	 <td> <h2>CHANGE PASSWORD</h2></td>
	</tr>
	<tr>
	<td>
	  <h4>${param.msg }</h4>
	  </td>
	</tr>
	<tr>
	<td><input type="password" name="cpsw" placeholder="current password"></td>
	</tr>
	<tr>
	<td><input type="password" name="npsw" placeholder="new password"></td>
	</tr>
	<tr>
	<td><input type="submit" name="save" value="SAVE"></td>
	</tr>
</table>
</form>
</body>
</html>