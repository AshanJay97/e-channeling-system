<%@page import="crudop.read_contactUs"%>
<%@page import="crudop.Read_Values"%>
<%@page import="java.util.Iterator"%>
<%@page import="crudop.*"%>
<%@page import="common.contact_bean"%>
<%@page import="common.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recieved messages</title>
</head>
<body>
<center>
	<h1>Recieved messages</h1>
	<table border="3">
		<%
		read_contactUs obj_read_contactUs = new read_contactUs();
		List<contact_bean>list=obj_read_contactUs.get_value();
		Iterator<contact_bean> it_list=list.iterator();
			while(it_list.hasNext()){
				contact_bean obj_contact_bean=new contact_bean();
				obj_contact_bean=it_list.next();
				%>
				<tr>
					<td><%=obj_contact_bean.getC_Name() %></td>
					<td><%=obj_contact_bean.getC_email() %></td>
					<td><%=obj_contact_bean.getC_message() %></td>
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
    margin: 0;
    padding: 0;
    text-align: center;
     background: -webkit-linear-gradient(left, #25c481, #25b7c4);
	background: linear-gradient(to right, #25c481, #25b7c4);
	background-size: cover;
    background-position: center;
    font-family: sans-serif;
}</style>
</html>