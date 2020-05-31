<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("d_id");
try
{
	PreparedStatement ps=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3303/test", "root", "root");
	
	String query="DELETE FROM doctor WHERE d_id=?";
	
	
	ps =conn.prepareStatement(query);
	
		ps.setString(1, id);
		
	ps.executeUpdate();
	out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>