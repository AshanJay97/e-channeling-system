
<%@page import="crudop.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success!</title>
</head>
<body>
<%
	String d_id=request.getParameter("d_id");
	String dname=request.getParameter("dname");
	String dspecial=request.getParameter("dspecial");
	
	out.println(d_id);
	out.println(dname);
	out.println(dspecial);
	
	Insert_Values obj_insert_values=new Insert_Values();
	obj_insert_values.insert_values(d_id, dname, dspecial);
%>

Finished

</body>
</html>