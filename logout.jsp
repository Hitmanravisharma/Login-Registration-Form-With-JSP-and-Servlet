<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
<% 
HttpSession sess= request.getSession(false);
		if(sess != null){
			sess.invalidate();
		}
	response.sendRedirect("indext.html");

%>

</body>
</html>