
<%@page import="crudop.Insert_Patient"%>
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
	String p_name=request.getParameter("p_name");
	String p_age=request.getParameter("p_age");
	String p_dob=request.getParameter("p_dob");
	String p_gender=request.getParameter("p_gender");
	String p_address=request.getParameter("p_address");
	String p_email=request.getParameter("p_email");
	String p_phone=request.getParameter("p_phone");
	String p_dname=request.getParameter("p_dname");
	String p_nic=request.getParameter("p_nic");
	out.println("We recieved your Apointment");
	
	
	Insert_Patient obj_insert_patient=new Insert_Patient();
	obj_insert_patient.insert_patient(p_name, p_age, p_dob, p_gender, p_address, p_email, p_phone,p_dname,p_nic);
%>

Finished

</body>
</html>