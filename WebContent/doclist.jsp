<%@page import="crudop.Read_Values"%>
<%@page import="java.util.Iterator"%>
<%@page import="common.doctor_bean"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor list</title>
</head>
<body>
<center>
	<h1>Our doctor list</h1>
<table border="1">		
		<%
			Read_Values obj_Read_values=new Read_Values();
			List<doctor_bean>list=obj_Read_values.get_value();
		
			Iterator<doctor_bean> it_list=list.iterator();
		
			while(it_list.hasNext()){
				doctor_bean obj_doctor_bean=new doctor_bean();
				obj_doctor_bean=it_list.next();
				
				%>
					<tr>
						<td><%=obj_doctor_bean.getD_id()  %></td>
						<td><%=obj_doctor_bean.getDname()  %></td>
						<td><%=obj_doctor_bean.getDspecial()  %></td>
						
						
						
						
					</tr>
				<% 
				
				 
			}
			
		%>
</table>



<a href="patient.jsp">Place a Apointment</a>
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