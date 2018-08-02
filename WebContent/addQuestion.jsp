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
<form action="Addquestion" method="post">
<table align="center">
<tr>
<td> <h3 style="color: blue;"> ADD QUESTION</h3></td>
</tr>
<tr>
	<td> 
	<select name="categories">
	  <option>=categories=</option>
	  <option> DBMS</option> 
	  <option> NETWORKING</option>
	 <option> DATA WIREHOUSING</option>
	 <option> INTERNET TECH</option>
	 <option> AI</option>
	</select>	
	</td>  
</tr>

<tr> <td> 
<input type="text"  placeholder="question" name="question">
</td></tr>
<tr>
<td> <input type="text" placeholder="op1" name="op1"></td>
</tr>
<tr>
<td> <input type="text" placeholder="op2" name="op2"></td>
</tr>

<tr>
<td> <input type="text" placeholder="op3" name="op3"></td>
</tr>

<tr>
<td> <input type="text" placeholder="op4" name="op4"></td>
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
</body>
</html>