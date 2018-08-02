<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<%
	String admin=(String)session.getAttribute("admin");
	if(admin == null){
		response.sendRedirect("index.html");
	}
%>
<title>Insert title here</title>
</head>
<body>
</div></div> class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Online<span>examination</span> <small>stop talking start doing</small></a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="admin.jsp"><span>Home</span></a></li>
          <li><a href="viewStudent.jsp" target="ifra"><span>View Student</span></a></li>
          <li><a href="addQuestion.jsp" target="ifra"><span>Add Question</span></a></li> 
          <li><a href="viewQuestion.jsp" target="ifra"><span>View Question</span></a></li>
          <li><a href="viewAllStudentResult.jsp" target="ifra"><span>View All Student Results</span></a></li>
          <li><a href="viewContact.jsp" target="ifra"><span>View Contact</span></a></li>
          <li><a href="notice.jsp" target="ifra"><span>Notice</span></a></li>
          <li><a href="logout.jsp"><span>Logout</span></a></li>
          
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
<iframe name="ifra" height="500px" width="100%" scrolling="auto" style="border: 0;"></iframe>
</body>
</html>