<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>LOGIN</title>
</head>

<body>
<%@ include file="header.jsp" %>
<%
String email= (String) session.getAttribute("email");
if (email != null)
	response.sendRedirect("index.jsp"); // 
else {}
%>

</html>