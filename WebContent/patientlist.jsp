
<%@page import="crudop.Read_Patient"%>
<%@page import="common.patient_bean"%>
<%@page import="crudop.*"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apointments</title>
</head>
<body>

<center>
	<h1>All the patients apointments</h1>
<table border="1">		
		<%
			Read_Patient obj_read_patient=new Read_Patient();
			List<patient_bean>list=obj_read_patient.get_value();
		
			Iterator<patient_bean> it_list=list.iterator();
		
			while(it_list.hasNext()){
				patient_bean obj_patient_bean=new patient_bean();
				obj_patient_bean=it_list.next();
				
				%>
					<tr>
						<td><%=obj_patient_bean.getP_name()  %></td>
						<td><%=obj_patient_bean.getP_age()  %></td>
						<td><%= obj_patient_bean.getP_dob() %></td>
						<td><%= obj_patient_bean.getP_gender() %></td>
						<td><%= obj_patient_bean.getP_address() %></td>
						<td><%= obj_patient_bean.getP_email() %></td>
						<td><%= obj_patient_bean.getP_phone() %></td>
						<td><%= obj_patient_bean.getP_dname() %></td>
						<td><%= obj_patient_bean.getP_nic() %></td>
						<td>
						
						
						
					</tr>
				<% 
				
				 
			}
			
		%>
</table>
						
						<a href="admin_panel.jsp">go back</a><br>
</center>
</body>
<style>
body{
	
    background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
    
}

</style>
</html>