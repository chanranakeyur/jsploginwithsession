<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
    	response.setDateHeader("Expires",-1);
    	response.setHeader("Pragma","no-cache");
    	response.setHeader("Cache-Control","no-store");
    	response.setHeader("Control-Cache", "no-cache");
    
    	if(session.getAttribute("username")!=null)
    	{
    		response.sendRedirect("logout.jsp");
    	}
    	else
    	{
    		session.removeAttribute("username");
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="LoginServlet" method="post">
	<center>
		Username <input type="text" name="user" ><br><br>
		Password <input type="password" name="pass" ><br><br>
		<input type="submit" value="Login">
	</center>
</form>
</body>
</html>
<%
	}
%>