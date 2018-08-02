<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
 	String cpsw=request.getParameter("cpsw");
 	String npsw=request.getParameter("npsw");
	
	String email=(String)session.getAttribute("user");
	
	/* System.out.println(cpsw);
	System.out.println(npsw);
	System.out.println(email); */
	
	String sql="select * from user where Email=? and password=?";
	Connection con=Provider.getConnection();
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1, email);
	pst.setString(2, cpsw);
	ResultSet rs=pst.executeQuery();
	boolean status=rs.next();
	
	if(status){
		String qry="update user set password=? where email=?";
		PreparedStatement ps=con.prepareStatement(qry);
		ps.setString(1, npsw);
		ps.setString(2, email);
		ps.execute();
		response.sendRedirect("changePassword.jsp?msg=Password changed..");
	}
	else{
		response.sendRedirect("changePassword.jsp?msg=Password unable to change");
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>


