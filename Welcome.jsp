<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="indexStyle.css">
</head>
<body>
<% 
HttpSession session1= request.getSession(false);
if(session1 != null && session1.getAttribute("username")!=null){
String username =(String)session1.getAttribute("username");
%>
<div class="container">
<h1>Welcome,<%= username%>!</h1>
<p>We're delighted to have you on our platform.</p>
<h3>Explore, learn, and connect with our community!</h3>
<p>Feel free to stay as long as you like, and when you're ready,</p>
You can <a href ="logout.jsp">LOGOUT</a>security.
</div>
<% 
}else{
	response.sendRedirect("Login.jsp");
}
%>

</body>
</html>