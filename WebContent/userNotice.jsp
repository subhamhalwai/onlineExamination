<%@page import="java.sql.ResultSet"%>
<%@page import="com.exam.db.Provider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Online<span>examination</span> <small>Keep Silence</small></a></h1>
      </div>
      <!-- <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div> -->
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
<li><a href="index.html"><span>Home</span></a></li>
          <li><a href="about.html"><span>About Us</span></a></li>
          <li><a href="registration.jsp"><span>Registration</span></a></li>
          <li class="active"><a href="userNotice.jsp"><span>Notice</span></a></li> 
          <li><a href="login.jsp"><span>Login</span></a></li>
          <li><a href="contact.jsp"><span>Contact Us</span></a></li>          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.png" width="960" height="335" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="335" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="335" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
       
</div>
</div>
</div>
</div>
 
        <table class="table">
	<tr>
		<th>DATE</th>
		<th>TITLE</th>
		<th>SUBJECT</th>
		</tr>
	<%
		String sql="select * from notice";
		Connection con=Provider.getConnection();
		PreparedStatement pst=con.prepareStatement(sql);
		
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			%>
				<tr class="success">
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(2) %></td>
					</tr>
			<%
		}
	%>
	</table>
</body>
</html>