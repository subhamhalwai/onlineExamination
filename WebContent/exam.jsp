
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
<center>
	<form action="doexam.jsp" style="margin-top: 10%;">
		<label>SELECT SUBJECT</label>
			<select name="subjects">
				<option> DBMS</option> 
	  			<option> NETWORKING</option>
	 			<option> DATA WIREHOUSING</option>
	 			<option> INTERNET TECH</option>
	 			<option> AI</option>
			</select><br>
		<input type="submit" value="TAKE TEST">
	</form>
</center>
</body>
</html>