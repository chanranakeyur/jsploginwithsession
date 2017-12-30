<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	response.setDateHeader("Expires",-1);
    	response.setHeader("Pragma","no-cache");
    	response.setHeader("Cache-Control","no-store");
    	response.setHeader("Control-Cache", "no-cache");
		
    	if(session.getAttribute("username")==null){
			session.invalidate();
			response.sendRedirect("login.jsp");
		}
		else
		{
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	Welcome ${username}
	<br><br>
<form action="LogoutServlet" method="post">	
	<input type="submit" value="Logout">
	<a href="welcome.jsp">click me</a>
</form>
	
</body>
</html>
<%
	}
%>