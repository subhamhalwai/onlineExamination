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
<form action="Addnotice" method="post">
<center>
<label>${param.msg}</label>
<label><h3>Notice</h3></label>
<label>Title</label>
<input type="text" name="title" placeholder="title">
<label>Subject</label>
<input type="text" name="subject" placeholder="subject"><br>
<input type="submit" value="save" class="btn btn-success">
</center>
</form>
</body>
</html>