<%@page import="com.exam.db.Provider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">

var sec = 00;   // set the seconds
var min = 10;   // set the minutes

function countDown() {
   sec--;
  if (sec == -01) {
   sec = 59;
   min = min - 1; }
  else {
   min = min; }

if (sec<=9) { sec = "0" + sec; }

  time = (min<=9 ? "0" + min : min) + " min and " + sec + " sec ";

if (document.getElementById) { document.getElementById('theTime').innerHTML = "Time remaining: "+time; }

SD=window.setTimeout("countDown();", 1000);
if (min == '00' && sec == '00') { sec = "00"; document.frm.submit(); }
}
window.onload = countDown;

</script>

</head>
<body>
<%@page import="java.sql.*"%>
<%
	String type=request.getParameter("subjects");
	session.setAttribute("type", type);
%>
<form method="post" action="answer.jsp" name="frm">
<table width="100%">
 <tr><td width="100%" align="center"><span id="theTime"  style="color:#FF0000" style="font:large"></span></td></tr>
</table>
<table align="center">
<%
Connection connection =Provider.getConnection(); 
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery("select * from questions where category='"+type+"'");
int i=1;
while(rs.next()){
	int c=1,d=2,e=3,f=4;
%>
<tr><td><font color='red'><%=i%>.<%=rs.getString(2)%></font></td><tr>
<tr><td><input type="radio" value="op<%=c%>" name="radio<%=i%>"/><%=rs.getString(3)%></td>
<td><input type="radio" value="op<%=d%>" name="radio<%=i%>"/><%=rs.getString(4)%></td>
<td><input type="radio" value="op<%=e%>" name="radio<%=i%>"/><%=rs.getString(5)%></td>
<td><input type="radio" value="op<%=f%>" name="radio<%=i%>"/><%=rs.getString(6)%></td></tr>
	<%
	
	i++;
	if(i==11)
	{
		break;
	}
	}
	%>
<tr><td><input type="submit" value="PLEASE SUBMIT"></td></tr>
</table>
</form>
</body>
</html>