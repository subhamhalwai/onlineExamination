<%@page import="com.exam.db.Provider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.Date"%>
<%
String type=(String)session.getAttribute("type");
String st[]=new String[10];
for(int i=0;i<st.length;i++){
int j=i+1;
st[i]=request.getParameter("radio"+j);
}
Connection connection = Provider.getConnection();
Statement stmt=connection.createStatement();
ResultSet rs=stmt.executeQuery("select * from questions where category='"+type+"'");
String ans="";
while(rs.next()){
ans+=rs.getString(7)+" ";
}

int count=0;
String answers[]=ans.split(" ");
for(int i=0;i<answers.length;i++){
if(st[i].equals(answers[i])){
count++;
}
}
session.setAttribute("mark", String.valueOf(count));
%>
<form action="save.jsp">
<table align="center">
<tr>
	<td>
		EXAM IS :-
	</td>
	<td>
		<%=type%>
	</td>
</tr>
<tr>
	<td>
		CURRENT DATE IS:-
	</td>
	<td>
		<%=new Date()%>
	</td>
</tr>
<tr>
	<td>
		TOTAL MARK SECURED:-
	</td>
	<td>
		<%=count%>
	</td>
</tr>
<tr>
	<td>
		
	</td>
	<td>
		<input type="submit" value="save your result">
	</td>
</tr>

</table>
</form>

</body>
</html>