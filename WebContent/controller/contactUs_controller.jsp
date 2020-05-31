<%@page import="crudop.insert_contactUs"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String c_Name =request.getParameter("c_Name");
	String c_email=request.getParameter("c_email");
	String c_message=request.getParameter("c_message");
	
	//out.println(c_name);
	//out.println(c_email);
	//out.println(c_content);
	out.println("We recievd your message!!");
	insert_contactUs obj_insert_contactUs = new insert_contactUs();
	obj_insert_contactUs.insert_contactUs(c_Name, c_email, c_message);
%>
</body>
</html>