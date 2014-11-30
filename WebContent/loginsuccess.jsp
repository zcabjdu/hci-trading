<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shoretrade - Login Success</title>
</head>
<body>
	Login Successful, redirecting...
	<a href="index.jsp">Click here if not automatically redirected</a>
<%
	String user = request.getParameter( "username" );
	session.setAttribute( "user", user );
    response.sendRedirect("index.jsp");
%>
</body>
</html>